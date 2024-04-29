// import 'package:demo_dprofiles/src/core/app_responsive.dart';
// import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
// import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
// import 'package:ficonsax/ficonsax.dart';
// import 'package:flutter/material.dart';

// class BottomChatBarAction extends StatefulWidget {
//   const BottomChatBarAction({super.key});

//   @override
//   State<BottomChatBarAction> createState() => _BottomChatBarActionState();
// }

// class _BottomChatBarActionState extends State<BottomChatBarAction> {
//   final _chatController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: context.padding(horizontal: 10),
//       child: Container(
//         padding: context.padding(vertical: 10),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             AppOutlineButton(context).iconButton(
//               iconData: IconsaxOutline.image,
//               onPressed: () {},
//             ),
//             Expanded(
//               child: MyTextFormField(
//                 controller: _chatController,
//                 minLines: 1,
//                 maxLines: 10,
//               ),
//             ),
//             context.sizedBox(width: 10),
//             AppOutlineButton(context).iconButton(
//               iconData: IconsaxOutline.send_2,
//               onPressed: () => _sendMessage(context),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
