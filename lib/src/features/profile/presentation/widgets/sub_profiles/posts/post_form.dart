import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class PostForm extends StatelessWidget {
  const PostForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Assets.images.home.avatarHolder.image(),
      title: const MyTextFormField(
        hintText: "What's on your mind, Barton",
      ),
      trailing: const Icon(IconsaxOutline.gallery),
    );
  }
}
