import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/auto_generate_text_to_speech.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoverLetterGeneration extends StatefulWidget {
  const CoverLetterGeneration({Key? key}) : super(key: key);

  @override
  State<CoverLetterGeneration> createState() => _CoverLetterGenerationState();
}

class _CoverLetterGenerationState extends State<CoverLetterGeneration> {
  String? _textGenerated;
  String? _createAt;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState, String?>(
      selector: (state) {
        if (state is GenerateCoverLetterSuccess) {
          _textGenerated = state.data;
          _createAt = DateTime.now().toString().convertToDDMMYYFormat();
        }

        return _textGenerated;
      },
      builder: (context, state) {
        return AutoGenerateTextToSpeech(
          textGenerated: _textGenerated,
          createAt: _createAt,
        );
      },
    );
  }
}
