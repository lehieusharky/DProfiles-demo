import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ai_character_event.dart';
part 'create_ai_character_state.dart';
part 'create_ai_character_bloc.freezed.dart';

class CreateAiCharacterBloc
    extends Bloc<CreateAiCharacterEvent, CreateAiCharacterState> {
  CreateAiCharacterBloc() : super(_Initial()) {
    on<CreateAiCharacterEvent>((event, emit) {});
  }
}
