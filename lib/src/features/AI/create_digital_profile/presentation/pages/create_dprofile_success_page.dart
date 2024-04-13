import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_education_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

@RoutePage()
class CreateDigitalProfileSuccessPage extends StatefulWidget {
  const CreateDigitalProfileSuccessPage({super.key});

  @override
  State<CreateDigitalProfileSuccessPage> createState() =>
      _CreateDigitalProfileSuccessPageState();
}

class _CreateDigitalProfileSuccessPageState
    extends State<CreateDigitalProfileSuccessPage> {
  UserInfoModel userInfo = const UserInfoModel();

  List<EducationModel> educations = [];

  List<ExperienceModel> experiences = [];

  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateDigitalProfileBloc(),
      child: BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
        listener: (context, state) {
          if (state is GetUserInfoSuccess) {
            userInfo = UserInfoModel.fromJson(state.response.data);
          }
        },
        builder: (context, state) {
          educations = context.watch<CreateDigitalProfileBloc>().educations;

          experiences = context.watch<CreateDigitalProfileBloc>().experiences;

          certificates = context.watch<CreateDigitalProfileBloc>().certificates;
          return MyScaffold(
            useAppBar: true,
            canBack: true,
            onBack: () {
              while (context.router.canPop()) {
                Navigator.pop(context);
              }
            },
            horizontalMargin: 20,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Digital Profile',
                          style: AppFont()
                              .fontTheme(context, weight: FontWeight.bold)
                              .titleSmall),
                      const Spacer(),
                      Padding(
                        padding: context.padding(horizontal: 10),
                        child: Icon(IconsaxOutline.timer_1,
                            color: colorScheme(context).primary),
                      ),
                      Text('View History',
                          style: AppFont()
                              .fontTheme(context,
                                  color: colorScheme(context).primary)
                              .bodyMedium),
                    ],
                  ),
                  _buildBasicInfo(),
                  const MyDivider(verticalMargin: 24),
                  _buildEducation(),
                  const MyDivider(verticalMargin: 24),
                  _buildCertificate(),
                  const MyDivider(verticalMargin: 24),
                  _buildExperience(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEducation() {
    return Padding(
      padding: context.padding(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 8),
            child: Text(appLocal(context).education,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: educations.map((e) => e.toWidget(context)).toList()),
        ],
      ),
    );
  }

  Widget _buildExperience() {
    return Padding(
      padding: context.padding(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 8),
            child: Text(appLocal(context).experience,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: experiences.map((e) => e.toWidget(context)).toList()),
        ],
      ),
    );
  }

  Widget _buildCertificate() {
    return Padding(
      padding: context.padding(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 8),
            child: Text(appLocal(context).certificate,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: certificates.map((e) => e.toWidget(context)).toList()),
        ],
      ),
    );
  }

  Widget _buildBasicInfo() {
    return Padding(
      padding: context.padding(top: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 8),
            child: Text('Basic information',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Tuple2('Name', userInfo.username),
                Tuple2('DOB', userInfo.birthDay ?? ''),
                Tuple2('Nationality', userInfo.nationality ?? ''),
                Tuple2('ID Card Number', userInfo.idCardNumber ?? ''),
              ]
                  .map((e) => Padding(
                        padding: context.padding(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.item1,
                                style: AppFont()
                                    .fontTheme(context,
                                        color: colorScheme(context).outline)
                                    .bodyMedium),
                            Text(e.item2.toString(),
                                style: AppFont()
                                    .fontTheme(context, weight: FontWeight.w600)
                                    .bodyMedium),
                          ],
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
