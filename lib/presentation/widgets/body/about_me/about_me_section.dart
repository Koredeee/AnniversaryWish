import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/presentation/widgets/body/about_me/about_me_image_box.dart';
import 'package:portfolio/presentation/widgets/body/about_me/about_me_text.dart';
import 'package:portfolio/presentation/widgets/body/intro/intro_circle_image_box.dart';
import 'package:portfolio/presentation/widgets/body/intro/intro_text.dart';
import 'package:portfolio/presentation/widgets/body/projects/project_image.dart';
import '../../../../core/utils/app_extensions.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: context.width < DeviceType.mobile.getMaxWidth()
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AboutMeImageBox(img: AppAssets.adventuresImg),
                SizedBox(height: 50),
                AboutMeText(),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AboutMeText(),
                AboutMeImageBox(img: AppAssets.adventuresImg),
              ],
            ),
    );
  }
}
