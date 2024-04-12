import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class TitleWalletFollowerProfile extends StatefulWidget {
  final String title;
  final String walletAddress;
  final String follower;
  final String following;
  final String post;

  const TitleWalletFollowerProfile(
      {Key? key,
      required this.title,
      required this.walletAddress,
      required this.follower,
      required this.following,
      required this.post})
      : super(key: key);

  @override
  State<TitleWalletFollowerProfile> createState() =>
      _TitleWalletFollowerProfileState();
}

class _TitleWalletFollowerProfileState
    extends State<TitleWalletFollowerProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(),
        _buildWallet(),
        Padding(
          padding: context.padding(vertical: 2),
          child: Row(
            children: [
              Tuple2('Follower', widget.follower),
              Tuple2('Following', widget.following),
              Tuple2('Post', widget.post),
            ].map((e) => _buildFollow(e.item1, e.item2)).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildFollow(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: AppFont()
              .fontTheme(context, color: colorScheme(context).outline)
              .bodyMedium,
        ),
        Padding(
          padding: context.padding(left: 8, right: 16),
          child: Text(
            value,
            style: AppFont().fontTheme(context).bodyMedium,
          ),
        ),
      ],
    );
  }

  Widget _buildWallet() {
    return Padding(
      padding: context.padding(vertical: 2),
      child: Text(
        "Wallet: ${widget.walletAddress}",
        style: AppFont()
            .fontTheme(context, color: colorScheme(context).outline)
            .bodyMedium,
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Title: ${widget.title}",
          style: AppFont()
              .fontTheme(context, color: colorScheme(context).outline)
              .bodyMedium,
        ),
        Container(
          padding: context.padding(horizontal: 5, vertical: 3),
          decoration: BoxDecoration(
              color: colorScheme(context).outlineVariant.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Text(
                '100',
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyMedium,
              ),
              context.sizedBox(width: 5),
              Assets.icons.wallet.svg(),
            ],
          ),
        )
      ],
    );
  }
}