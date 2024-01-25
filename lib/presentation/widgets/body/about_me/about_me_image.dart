import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/data/models/responsive_size.dart';

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .36,
      smallScreenSize: context.width * .26,
    );

    return Image.asset(
      img,
      width: responsiveSize.getSize(),
      height: responsiveSize.getSize(),
    );
  }
}
