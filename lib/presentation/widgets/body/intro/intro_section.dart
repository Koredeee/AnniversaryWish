import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/presentation/widgets/body/about_me/about_me_image_box.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: context.width < DeviceType.mobile.getMaxWidth()
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AboutMeImageBox(img: AppAssets.introImg),
                SizedBox(height: 50),
                IntroText(
                  headerText: AppStrings.headerText,
                  subHeaderText: AppStrings.subHeaderText,
                ),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IntroText(
                  headerText: AppStrings.headerText,
                  subHeaderText: AppStrings.subHeaderText,
                ),
                AboutMeImageBox(img: AppAssets.introImg),
              ],
            ),
    );
  }
}
