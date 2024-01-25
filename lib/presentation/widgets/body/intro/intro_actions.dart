import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../blocs/home_bloc/home_bloc.dart';

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      ElevatedButton(
        onPressed: () {
          context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(1));
        },
        style: ElevatedButton.styleFrom(
          primary: AppColors.scaffoldColor, // Background color
          onPrimary: AppColors.headerTextColor, // Text color
          side: BorderSide(color: AppColors.headerTextColor), // Border color
        ),
        child: Container(
          width: 140,
          height: 45,
          child: Center(
            child: Text(
              "Explore",
              style: TextStyle(color: AppColors.headerTextColor),
            ),
          ),
        ),
      ),
      context.width < DeviceType.ipad.getMaxWidth()
          ? const SizedBox(height: 6)
          : const SizedBox(width: 32),
    ];

    return context.width < DeviceType.ipad.getMaxWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: actions,
          );
  }
}
