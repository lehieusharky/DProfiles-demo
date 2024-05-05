import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/post/presentation/bloc/bloc/post_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormCreatePost extends StatefulWidget {
  final int userID;
  const FormCreatePost({Key? key, required this.userID}) : super(key: key);

  @override
  State<FormCreatePost> createState() => _FormCreatePostState();
}

class _FormCreatePostState extends State<FormCreatePost> {
  late final TextEditingController _contentController = TextEditingController();
  final keyForm = GlobalKey<FormState>();

  List<String> imagesUrl = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        if (state is PostLoading) {
          showLoadingDialog(context);
        }

        if (state is PostUploadImagesSuccess) {
          Navigator.pop(context);
          imagesUrl = state.images;
        }

        if (state is PostCreatePostSuccess) {
          Navigator.pop(context);
          showErrorDialog(context,
              onPressed: () => Navigator.pop(context, state.createdPost),
              title: 'Success',
              description: 'Create post success');
        }
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(top: 16),
          child: Form(
            key: keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextFormField.multipleLine(
                  controller: _contentController,
                  defaultBorderColor: Colors.transparent,
                  maxLines: 10,
                  minLines: 1,
                  hintText: 'Your content here',
                  autoFocus: true,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Content can not null';
                    } else {
                      return null;
                    }
                  },
                ),
                context.sizedBox(height: 10),
                if (imagesUrl.isNotEmpty)
                  SizedBox(
                    height: context.sizeHeight(200),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: imagesUrl.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                              padding: context.padding(right: 10),
                              child: MyCachedImage(
                                  height: 200,
                                  width: context.width * 0.7,
                                  imageUrl: imagesUrl[index]),
                            )),
                  ),
                _buildUploadImage(context),
                context.sizedBox(height: 20),
                AppFlatButton(context).elevatedButton(
                  width: context.width,
                  title: 'Post',
                  onPressed: () => _save(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildUploadImage(BuildContext context) {
    return Padding(
      padding: context.padding(vertical: 10),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(4),
        padding: const EdgeInsets.all(6),
        dashPattern: const [10, 5],
        color: colorScheme(context).primary,
        child: InkWell(
          onTap: () => _uploadImages(context),
          child: Container(
            width: context.width,
            height: context.sizeHeight(135),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(IconsaxOutline.gallery_add,
                    color: colorScheme(context).outline),
                Padding(
                  padding: context.padding(top: 8, bottom: 4),
                  child: Text(
                    'Upload your images',
                    style: AppFont()
                        .fontTheme(
                          context,
                          weight: FontWeight.bold,
                          color: colorScheme(context).outline,
                        )
                        .titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _uploadImages(BuildContext context) =>
      context.read<PostBloc>().add(const PostUploadImages());

  void _save(BuildContext context) {
    if (keyForm.currentState?.validate() ?? false) {
      if (imagesUrl.isEmpty) {
        showErrorDialog(
          context,
          title: 'Post failed',
          description: 'At least at 1 image',
        );
      } else {
        context.read<PostBloc>().add(PostCreatePost(
              userID: widget.userID,
              content: _contentController.text.trim(),
              imageUrl: imagesUrl,
            ));
      }
    }
  }
}
