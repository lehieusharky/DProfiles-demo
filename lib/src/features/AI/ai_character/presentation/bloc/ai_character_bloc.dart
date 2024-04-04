import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_character_event.dart';
part 'ai_character_state.dart';
part 'ai_character_bloc.freezed.dart';

class AiCharacterBloc extends Bloc<AiCharacterEvent, AiCharacterState> {
  AiCharacterBloc() : super(const AiCharacterState.initial()) {
    on<AiCharacterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
