import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/widgets/social_login_button.dart';

import 'dont_have_account_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'البريد الألكترونى',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              icon: Icons.visibility,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور',
                  style: AppStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {},
            ),
            const SizedBox(height: 32),
            const DontHaveAneAccountWidget(),
            const SizedBox(height: 32),
            const OrDivider(),
            const SizedBox(height: 16),
            const SocialLoginButton(
              title: 'تسجيل بواسطة جوجل',
              image: AppImages.googleIcon,
            ),
            const SizedBox(height: 16),
            const SocialLoginButton(
              title: 'تسجيل بواسطة ابل',
              image: AppImages.appleIcon,
            ),
            const SizedBox(height: 16),
            const SocialLoginButton(
              title: 'تسجيل بواسطة فيسبوك',
              image: AppImages.facebookIcon,
            ),

          ],
        ),
      ),
    );
  }
}

