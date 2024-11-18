import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/on_boarding_view.dart';

import '../../../../core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  void executeNavigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
            alignment: AlignmentDirectional.topEnd,
            child: SvgPicture.asset(AppImages.plant)),
        SvgPicture.asset(AppImages.logo),
        SvgPicture.asset(
          AppImages.splashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
