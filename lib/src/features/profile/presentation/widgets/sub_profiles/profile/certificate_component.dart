import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CertificateComponent extends StatefulWidget {
  const CertificateComponent({Key? key}) : super(key: key);

  @override
  State<CertificateComponent> createState() => _CertificateComponentState();
}

class _CertificateComponentState extends State<CertificateComponent> {
  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<CertificateModel>?>(
      selector: (state) {
        if (state is ProfileGetUserCertificatesSuccess) {
          if (state.certificates.length > 2) {
            certificates = state.certificates.sublist(0, 3);
          }
          certificates = state.certificates;
        }
        return certificates;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TitleSubPage(
                title: 'Certificates', route: ListCertificateRoute()),
            if (state == null)
              const MyShimmer(count: 1, height: 150)
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: certificates.map((e) => e.toWidget(context)).toList(),
              )
          ],
        );
      },
    );
  }
}
