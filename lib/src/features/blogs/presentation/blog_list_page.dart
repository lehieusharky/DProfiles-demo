import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_holder_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/features/blogs/presentation/bloc/blog_bloc.dart';
import 'package:demo_dprofiles/src/features/home/domain/entities/ext_new_feed_entity.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BlogListPage extends StatefulWidget {
  const BlogListPage({super.key});

  @override
  State<BlogListPage> createState() => _BlogListPageState();
}

class _BlogListPageState extends State<BlogListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => BlogBloc()..add(const BlogEvent.load()),
      child: BlocBuilder<BlogBloc, BlogState>(
        builder: (context, state) {
          Widget child;
          if (state is BlogInitial) {
            child = const MyListFeedShimmer(count: 3,);
          } else if (state is BlogLoading) {
            child =  const MyListFeedShimmer(count: 3,);
          } else if (state is BlogLoaded) {
            child = _buildBlogList(context, state.blogs);
          } else if (state is BlogError) {
            child = Center(child: Text(state.message));
          } else {
            child = const MyLoading();
          }
          return child;

        },
      ),
    );
  }

  Widget _buildBlogList(
    BuildContext context,
      List<BlogModel> blogs,
  ) {
    return Padding(
      padding: context.padding(horizontal: 20),
      child: SizedBox(
        height: blogs.length * 300,
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: blogs.length,
          itemBuilder: (_, index) => _itemBuilder(context, blogs[index]),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, BlogModel data) {
    return Padding(
      padding: context.padding(bottom: 28),
      child: InkWell(
        onTap: () => context.router.push(BlogDetailRoute(blog: data)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TODO thumbnail blog
            // if (data.thumbnail.isNotEmpty) ...[
            //   ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: AspectRatio(
            //         aspectRatio: 16 / 5,
            //         child: MyCacheImage(imageUrl: data.thumbnail)),
            //   ),
            // ],
            SizedBox(height: context.sizeHeight(8)),
            Text(
              data.title,
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w600)
                  .titleSmall,
            ),
            SizedBox(height: context.sizeHeight(8)),
            Text(
              DateFormat('HH:mm dd MMM yyyy').format(data.createdAt),
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyLarge,
            ),
            Padding(
              padding: context.padding(top: 20, bottom: 16),
              child: Text(
                data.summary,
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyMedium,
              ),
            ),
            const ReactionPost(
              likes: 112,
              comments: 0,
              shares: 3,
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}



