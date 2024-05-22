import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublicCertificateComponent extends StatefulWidget {
  const PublicCertificateComponent({Key? key}) : super(key: key);

  @override
  State<PublicCertificateComponent> createState() =>
      _PublicCertificateComponentState();
}

class _PublicCertificateComponentState
    extends State<PublicCertificateComponent> {
  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        List<CertificateModel>?>(
      selector: (state) {
        if (state is PublicProfileGetUserCertificatesSuccess) {
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
              TitleSubPage(title:  appLocal(context).certificates, canEdit: false),
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
