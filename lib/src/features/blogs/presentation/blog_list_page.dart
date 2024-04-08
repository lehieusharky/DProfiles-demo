import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/features/blogs/presentation/bloc/blog_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            child = const Center(child: Text('Error'));
          } else {
            child = const Center(child: Text('Error'));
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
    return ListView.builder(
      itemCount: blogs.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: _itemBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: context.padding(bottom: 28),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: context.padding(right: 12),
                child: CircleAvatar(radius: context.sizeHeight(25)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Howard Barton',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.w600)
                            .bodyLarge,
                      ),
                      Padding(
                        padding: context.padding(left: 50),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding:
                                    context.padding(horizontal: 8, vertical: 3),
                                decoration: BoxDecoration(
                                    color: colorScheme(context).primary,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                  'Following',
                                  style: AppFont()
                                      .fontTheme(context,
                                          color:
                                              colorScheme(context).background)
                                      .bodyMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding: context.padding(left: 10),
                              child: const Icon(IconsaxOutline.more),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    '2 hours ago',
                    style: AppFont()
                        .fontTheme(context,
                            weight: FontWeight.w400,
                            color: colorScheme(context).outline)
                        .bodySmall,
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: context.padding(top: 16),
            child: Text(
              'The Luxury Of Traveling With Yacht Charter Companies',
              style: AppFont().fontTheme(context).bodyMedium,
            ),
          ),
          Padding(
            padding: context.padding(vertical: 25),
            child: Assets.images.home.live.image(),
          ),
          Row(
            children: [
              const Icon(IconsaxOutline.heart),
              Padding(
                padding: context.padding(left: 8, right: 16),
                child: Text(
                  '1125',
                  style: AppFont()
                      .fontTheme(
                        context,
                        weight: FontWeight.w400,
                      )
                      .bodyMedium,
                ),
              ),
              const Icon(IconsaxOutline.message),
              Padding(
                padding: context.padding(left: 8, right: 16),
                child: Text(
                  '345',
                  style: AppFont()
                      .fontTheme(
                        context,
                        weight: FontWeight.w400,
                      )
                      .bodyMedium,
                ),
              ),
              const Icon(IconsaxOutline.cloud_sunny),
              Padding(
                padding: context.padding(left: 8, right: 16),
                child: Text(
                  '348',
                  style: AppFont()
                      .fontTheme(
                        context,
                        weight: FontWeight.w400,
                      )
                      .bodyMedium,
                ),
              ),
              const Spacer(),
              const Icon(IconsaxOutline.eye),
              Padding(
                padding: context.padding(left: 8),
                child: Text(
                  '1124',
                  style: AppFont()
                      .fontTheme(
                        context,
                        weight: FontWeight.w400,
                      )
                      .bodyMedium,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
