// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:elcom_app/helpers/styling/assets.dart';

class OnBoardingPage {
  final String image;
  final String title;
  final String description;
  final double height;

  OnBoardingPage({
    required this.image,
    required this.title,
    required this.description,
    required this.height,
  });

  static final List<OnBoardingPage> allPages = [
    OnBoardingPage(
      image: Assests.firstBoardingImage,
      title: 'استعلام عن الإشتراك',
      description:
          'حالة الخط و الرصيد و السرعة وحجم الإستهلاك الشهري و كافة معلومات إشتراكك',
      height: 0.254,
    ),
    OnBoardingPage(
      image: Assests.secondBoardingImage,
      title: 'تمديد إشتراكك',
      description:
          'يمكنك من خلال التطبيق تمديد الإشتراك لمدة  48 ساعة يشكل مجاني',
      height: 0.341,
    ),
    OnBoardingPage(
      image: Assests.thirdBoardingImage,
      title: 'تقديم و متابعة الطلبات',
      description: 'طلبات رفع سرعة، تخفيض سرعة، خدمات أخرى ومتابعة طلباتك',
      height: 0.289,
    ),
  ];
}
