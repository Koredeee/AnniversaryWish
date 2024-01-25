import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/data/models/responsive_size.dart';
import 'package:portfolio/presentation/widgets/body/about_me/about_me_image.dart';
import 'package:portfolio/presentation/widgets/body/intro/circle_image_border.dart';

class AboutMeImageBox extends StatelessWidget {
  const AboutMeImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .78,
      ipadSize: context.width * .50,
      smallScreenSize: context.width * .37,
    );
    return SizedBox(
      width: responsiveSize.getSize(),
      child: const AboutMeImage(),
    );
  }
}
