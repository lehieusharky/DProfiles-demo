import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
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
          certificates = state.certificates;
        }
        if (state is ProfileDeleteCertificateSuccess) {
          context.read<ProfileBloc>().add(const ProfileGetUserCertificates());
        }
        return certificates;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSubPage(
              title: 'Certificates',
              route: const ListCertificateRoute(),
              onCallBack: () => context
                  .read<ProfileBloc>()
                  .add(const ProfileGetUserCertificates()),
            ),
            if (state == null)
              const MyShimmer(count: 1, height: 150)
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: certificates
                    .map((e) => e.toWidget(context,
                        onDelete: () => _deleteCertificate(context, e)))
                    .toList(),
              )
          ],
        );
      },
    );
  }

  void _deleteCertificate(
      BuildContext context, CertificateModel certificate) async {
    await showMyDialog<String?>(context,
        title: const Text('Are you want to delete your certificate?'),
        content: const Text('Be careful when click OK'),
        action: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'ok'),
            child: const Text('OK'),
          ),
          AppFlatButton(context).elevatedButton(
              title: 'Cancel',
              onPressed: () => Navigator.pop(context, 'cancel')),
        ]).then((value) {
      if (value == 'ok') {
        context
            .read<ProfileBloc>()
            .add(ProfileDeleteCertificate(certificate.id!));
      }
    });
  }
}
