import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/search/presentation/bloc/bloc/search_bloc.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSearchBar extends StatefulWidget {
  const FormSearchBar({super.key});

  @override
  State<FormSearchBar> createState() => _FormSearchBarState();
}

class _FormSearchBarState extends State<FormSearchBar> {
  final _searchController = TextEditingController();
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 16),
      child: Form(
        key: keyForm,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthField(
              hint: 'Your Keyword',
              maxLines: 1,
              keyboardType: TextInputType.text,
              autoFocus: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return appLocal(context).fieldCannotBeEmpty;
                } else {
                  return null;
                }
              },
              controller: _searchController,
              suffixIcon: IconButton(
                  onPressed: () => _search(context),
                  icon: const Icon(IconsaxOutline.send_1)),
            ),
          ],
        ),
      ),
    );
  }

  void _search(BuildContext context) {
    if (keyForm.currentState?.validate() ?? false) {
      context.read<SearchBloc>().add(
          SearchBarDoRequest(page: 1, keyWord: _searchController.text.trim()));
    }
  }
}
