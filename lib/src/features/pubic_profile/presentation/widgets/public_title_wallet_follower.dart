import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class TitleWalletFollowerPublicProfile extends StatefulWidget {
  final String title;
  final String walletAddress;
  final String follower;
  final String following;
  final String post;

  const TitleWalletFollowerPublicProfile({
    Key? key,
    required this.title,
    required this.walletAddress,
    required this.follower,
    required this.following,
    required this.post,
  }) : super(key: key);

  @override
  State<TitleWalletFollowerPublicProfile> createState() =>
      _TitleWalletFollowerPublicProfileState();
}

class _TitleWalletFollowerPublicProfileState
    extends State<TitleWalletFollowerPublicProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTitle(),
        _buildWallet(),
        Padding(
          padding: context.padding(vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tuple2( appLocal(context).follwer, widget.follower),
              Tuple2( appLocal(context).following, widget.following),
              Tuple2( appLocal(context).post, widget.post),
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
              .fontTheme(context,
                  weight: FontWeight.w600, color: colorScheme(context).outline)
              .bodyMedium,
        ),
        Padding(
          padding: context.padding(left: 8, right: 16),
          child: Text(
            value,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.w600)
                .bodyMedium,
          ),
        ),
      ],
    );
  }

  Widget _buildWallet() {
    return Padding(
      padding: context.padding(vertical: 2),
      child: Text(
        "${appLocal(context).wallet}: ${widget.walletAddress}",
        style: AppFont()
            .fontTheme(context,
                weight: FontWeight.w600, color: colorScheme(context).outline)
            .bodyMedium,
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      "${ appLocal(context).title}: ${widget.title}",
      style: AppFont()
          .fontTheme(context,
              weight: FontWeight.w600, color: colorScheme(context).outline)
          .bodyMedium,
    );
  }
}
