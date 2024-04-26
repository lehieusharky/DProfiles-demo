import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';

import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/bloc/bloc/my_ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/widgets/avatar_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/tab_bar_chat_history_my_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/view_history_my_character_bot.dart';

import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_ai_character_page.dart';
