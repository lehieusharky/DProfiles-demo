import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class SeeMoreTextProfile extends StatefulWidget {
  final String? text;
  final String subText;
  final TextStyle? textStyle;
  const SeeMoreTextProfile(
      {super.key, this.text, required this.subText, this.textStyle});

  @override
  State<SeeMoreTextProfile> createState() => _SeeMoreTextProfileState();
}

class _SeeMoreTextProfileState extends State<SeeMoreTextProfile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
            constraints: isExpanded
                ? const BoxConstraints()
                : BoxConstraints(maxHeight: context.sizeHeight(60)),
            child: Text(
              widget.text ?? widget.subText,
              softWrap: true,
              overflow: TextOverflow.fade,
            )),
        if (widget.text != null &&
            widget.text!.isNotEmpty &&
            widget.text!.length > 150)
          isExpanded
              ? TextButton(
                  child: Text(
                    'Show less',
                    style: widget.textStyle ??
                        AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodySmall,
                  ),
                  onPressed: () => setState(() => isExpanded = false))
              : TextButton(
                  child: const Text('Show more'),
                  onPressed: () => setState(() => isExpanded = true))
      ],
    );
  }
}
