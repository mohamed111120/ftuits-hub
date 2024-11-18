import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/page_view_item.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
              PageViewItem(
                isVisible: true,
                image: AppImages.onboardingImage1,
                backgroundImage: AppImages.onboardingBackground1,
                subtitle:
                    'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'مرحبًا بك في ',
                      style: AppStyles.bold23,
                    ),
                    Text(
                      'HUB',
                      style: AppStyles.bold23
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                    Text(
                      'Fruit',
                      style: AppStyles.bold23
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
              const PageViewItem(
                isVisible: false,
                image: AppImages.onboardingImage2,
                backgroundImage: AppImages.onboardingBackground2,
                subtitle:
                    'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ابحث وتسوق',
                      style: AppStyles.bold23,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
