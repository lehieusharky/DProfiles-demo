import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CertificateDProfile extends StatefulWidget {
  const CertificateDProfile({Key? key}) : super(key: key);

  @override
  State<CertificateDProfile> createState() => _CertificateDProfileState();
}

class _CertificateDProfileState extends State<CertificateDProfile> {
  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<CertificateModel>?>(
      selector: (state) {
        if (state is ProfileGetUserCertificatesSuccess) {
          certificates = state.certificates;
        }
        return certificates;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              context.sizedBox(height: 10),
              TitleSubPage(title: appLocal(context).certificate, canEdit: false),
              context.sizedBox(height: 5),
              if (state == null)
                Container()
              else
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      certificates.map((e) => e.toWidget(context)).toList(),
                )
            ],
          ),
        );
      },
    );
  }
}
