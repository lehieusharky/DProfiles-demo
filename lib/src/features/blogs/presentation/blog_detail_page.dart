import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

@RoutePage()
class BlogDetailPage extends StatelessWidget {
  const BlogDetailPage({Key? key, required this.blog}) : super(key: key);
  final BlogModel blog;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      canBack: true,
      // titleWidget: Assets.icons.logos.homeLogo.svg(),
      appBarTitle: blog.title,
      body: Column(
        children: [
          // Text(
          //   blog.title,
          //   style: AppFont().fontTheme(context).titleSmall,
          // ),
          Expanded(
            child: Markdown(
              selectable: true,
              data: blog.content,
            ),
          ),
        ],
      ),
    );
  }
}
