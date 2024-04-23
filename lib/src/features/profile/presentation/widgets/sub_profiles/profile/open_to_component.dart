import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/entities/ext_user_info_entity.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/part_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpenToComponent extends StatefulWidget {
  const OpenToComponent({Key? key}) : super(key: key);

  @override
  State<OpenToComponent> createState() => _OpenToComponentState();
}

class _OpenToComponentState extends State<OpenToComponent> {
  UserInfoModel? userInfo;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is ProfileGetUserInfoSuccess) {
          userInfo = state.userInfoModel;
        }
        return userInfo;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSubPage(
              title: 'Open to',
              route: const OpenToWorkRoute(),
              onCallBack: () =>
                  context.read<ProfileBloc>().add(const ProfileGetUserInfo()),
            ),
            if (userInfo != null) ...[
              _buildOpenField(context,
                  title: 'Pay',
                  type: userInfo!.getSalaryPayType(),
                  icon: Assets.icons.iconBag.svg()),
              _buildOpenField(context,
                  title: 'Salary',
                  type: userInfo!.salary == null
                      ? ''
                      : userInfo!.salary.toString(),
                  icon: Assets.icons.iconWallet.svg()),
            ]
          ],
        );
      },
    );
  }

  Widget _buildOpenField(
    BuildContext context, {
    required String title,
    required String type,
    required Widget icon,
  }) {
    return Padding(
      padding: context.padding(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppFont()
                .fontTheme(context,
                    color: colorScheme(context).outline,
                    weight: FontWeight.bold)
                .bodyLarge,
          ),
          PartComponent(
            title: type,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
