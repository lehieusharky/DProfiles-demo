import 'package:auto_route/auto_route.dart';
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
  List<CertificateModel>? certificates;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileGetUserCertificatesSuccess) {
          certificates = [];
          for (var element in state.certificates) {
            certificates?.add(element);
          }
        }
        if (state is ProfileDeleteCertificateSuccess) {
          certificates?.removeWhere((element) => element.id == state.id);
        }

        if (state is ProfileUpdateUserCertificateSuccess) {
          final itemWillbeRemove = certificates?.firstWhere(
              (element) => element.id == state.certificateModel.id);
          if (itemWillbeRemove != null) {
            final position = certificates?.indexOf(itemWillbeRemove);
            if (position != null) {
              certificates?.removeAt(position);

              certificates?.insert(position, state.certificateModel);
            }
          }
        }
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
            if (certificates == null)
              Container()
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: certificates!
                    .map((e) => e.toWidget(context,
                        // onUpdate: () => _updateCer(context, e),
                        // onDelete: () => _deleteCertificate(context, e)
                ))
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

  void _updateCer(BuildContext context, CertificateModel certificateModel) {
    context.router
        .push(FormEditCertificateRoute(certificateModel: certificateModel))
        .then((value) => value == null
            ? null
            : _onUpdate(context, value as CertificateModel));
  }

  void _onUpdate(BuildContext context, CertificateModel certificateModel) =>
      context
          .read<ProfileBloc>()
          .add(ProfileUpdateUserCertificate(certificateModel));
}
