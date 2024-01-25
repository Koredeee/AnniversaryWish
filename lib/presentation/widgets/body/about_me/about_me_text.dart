import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class AboutMeText extends StatelessWidget {
  const AboutMeText(
      {super.key, required this.headerText, required this.subHeaderText});
  final String headerText;
  final String subHeaderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s24
              : AppStyles.s52,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width - 20
              : context.width / 2.5,
          child: Text(
            subHeaderText,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s14
                : AppStyles.s18,
            textAlign: _getTextAlign(context.width),
            softWrap: true,
          ),
        ),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}
