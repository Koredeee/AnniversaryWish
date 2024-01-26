import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB SCRAPING',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];

  static const _basePath = 'assets/images';

  static const List<Project> projects = [
    Project(
      name: 'Live score',
      imageUrl: '$_basePath/gallery_1.jpg',
      description:
          'A football application to display all related matches and rankings in all international and local tournaments',
      githubRepoLink: 'https://github.com/radyhaggag/live_score',
      previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    Project(
      name: 'Instagram clone',
      imageUrl: '$_basePath/gallery_2.jpg',
      description:
          'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
      githubRepoLink:
          'https://github.com/radyhaggag/Instagram-Clone-With-Clean-Architecture',
      previewLink: 'https://youtu.be/MuuVjqrR49g',
    ),
    Project(
      name: 'TikTok Downloader',
      imageUrl: '$_basePath/gallery_3.jpg',
      description:
          'An application for download videos from tiktok and save it to gallery.',
      githubRepoLink: 'https://github.com/radyhaggag/tiktok_downloader',
      previewLink: 'https://youtu.be/mWeA625pcrI',
    ),
    Project(
      name: 'Bookly',
      imageUrl: '$_basePath/gallery_4.jpg',
      description: 'An application to explore books and view their details.',
      githubRepoLink:
          'https://github.com/radyhaggag/bookly_app_with_mvvm_and_bloc',
      previewLink: 'https://youtu.be/3nU_dYjsPsg',
    ),
    Project(
      name: 'Image processing',
      imageUrl: '$_basePath/gallery_5.JPG',
      description:
          'An Desktop program for process images and apply some filters to them.',
      githubRepoLink:
          'https://github.com/radyhaggag/image_processing_program_with_python_flet',
      previewLink: 'https://youtu.be/s1KFdBKNFig',
    ),
    Project(
      name: 'test',
      imageUrl: '$_basePath/gallery_6.JPG',
      description: '',
      googlePlay: '',
      previewLink: '',
    ),
  ];
}
