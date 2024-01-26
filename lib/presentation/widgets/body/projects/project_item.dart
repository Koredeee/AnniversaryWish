
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../data/models/project.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.scaffoldColor,
        border: Border.all(
          color: AppColors.headerTextColor, // Set the border color here
          width: 4, // Set the border width
        ),
      ),
      child: ClipRRect(
        // ClipRRect to clip the image to the rounded corners
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectImage(imageUrl: project.imageUrl),
            // if (project.previewLink != null || project.githubRepoLink != null)
          ],
        ),
      ),
    );
  }
}
