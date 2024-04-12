import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_feed_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_profile/sub_profile_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_transactions_page.dart';
import 'package:flutter/material.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        SubProfilePage(),
        SubFeedPage(),
        SubTransactionsPage(),
      ],
    );
  }
}
