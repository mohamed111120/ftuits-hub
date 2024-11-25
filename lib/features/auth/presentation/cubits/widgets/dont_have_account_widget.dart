import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DontHaveAneAccountWidget extends StatelessWidget {
  const DontHaveAneAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'لا تمتلك حساب؟',
            style: AppStyles.semiBold16.copyWith(
                color: AppColors.primaryColor
            )
        ),
        Text(
            'قم بانشاء حساب',
            style: AppStyles.semiBold16.copyWith(
                color: const Color(0xff949D9E)
            )
        ),
      ],
    );
  }
}
