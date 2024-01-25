import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/presentation/widgets/body/about_me/about_me_image_box.dart';
import 'package:portfolio/presentation/widgets/body/about_me/about_me_text.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: context.width < DeviceType.mobile.getMaxWidth()
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AboutMeImageBox(img: AppAssets.thankYouImg),
                SizedBox(height: 50),
                AboutMeText(
                  headerText: AppStrings.headerTextThanks,
                  subHeaderText: AppStrings.subHeaderTextThanks,
                ),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AboutMeText(
                  headerText: AppStrings.headerTextThanks,
                  subHeaderText: AppStrings.subHeaderTextThanks,
                ),
                AboutMeImageBox(img: AppAssets.thankYouImg),
              ],
            ),
    );
  }
}
