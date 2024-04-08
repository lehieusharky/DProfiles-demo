import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/features/blogs/presentation/bloc/blog_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class BlogListPage extends StatelessWidget {
  const BlogListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlogBloc()..add(const BlogEvent.load()),
      child: BlocBuilder<BlogBloc, BlogState>(
        builder: (context, state) {
          final bloc = context.read<BlogBloc>();
          Widget child;
          if (state is BlogInitial) {
            child = const Center(child: CircularProgressIndicator());
          } else if (state is BlogLoading) {
            child = const Center(child: CircularProgressIndicator());
          } else if (state is BlogLoaded) {
            child = _buildBlogList(context, state.blogs);
          } else if (state is BlogError) {
            child = Center(child: Text(state.message));
          } else {
            child = const Center(child: CircularProgressIndicator());
          }
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            onRefresh: () => bloc.add(const BlogEvent.refresh()),
            onLoading: () => bloc.add(const BlogEvent.loadMore()),
            controller: bloc.refreshController,
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildBlogList(
    BuildContext context,
    List<BlogModel> blogs,
  ) {
    return ListView.separated(
      itemCount: blogs.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) => _itemBuilder(context, blogs[index]),
      separatorBuilder: (_, __) => const Divider(),
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
            if (data.thumbnail.isNotEmpty) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CachedNetworkImage(
                    imageUrl: data.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            SizedBox(height: context.sizeHeight(8)),
            Text(
              data.title,
              style: AppFont().fontTheme(context).titleSmall,
            ),
            SizedBox(height: context.sizeHeight(8)),
            Text(
              DateFormat('HH:mm dd MMM yyyy').format(data.createdAt),
              style: AppFont()
                  .fontTheme(context, color: MyColor.gray777E90)
                  .bodyLarge,
            ),
            SizedBox(height: context.sizeHeight(20)),
            Text(
              data.summary,
              style: AppFont()
                  .fontTheme(context, color: MyColor.gray777E90)
                  .bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
