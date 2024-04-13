import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListCertificatePage extends StatefulWidget {
  const ListCertificatePage({Key? key}) : super(key: key);

  @override
  State<ListCertificatePage> createState() => _ListCertificatePageState();
}

class _ListCertificatePageState extends State<ListCertificatePage> {
  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<ProfileBloc>()..add(const ProfileGetUserCertificates()),
      child: BlocSelector<ProfileBloc, ProfileState, List<CertificateModel>?>(
        selector: (state) {
          if (state is ProfileGetUserCertificatesSuccess) {
            certificates = state.certificates;
          }

          return certificates;
        },
        builder: (context, state) {
          return MyScaffold(
            useAppBar: true,
            canBack: true,
            horizontalMargin: 20,
            appBarTitle: 'Certificates',
            body: (state == null)
                ? const MyLoading()
                : Column(
                    children: [
                      Padding(
                        padding: context.padding(vertical: 32, bottom: 12),
                        child: AppFlatButton(context).elevatedButton(
                            width: context.width,
                            title: 'Add new education',
                            onPressed: () => context.router
                                .push(const AddNewCertificateRoute())
                                .then((value) => setState(() {
                                      certificates
                                          .add(value as CertificateModel);
                                    }))),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: certificates.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  certificates[index].toWidget(context)))
                    ],
                  ),
          );
        },
      ),
    );
  }
}
