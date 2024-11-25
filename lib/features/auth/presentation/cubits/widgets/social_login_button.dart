import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xffDCDEDE),
            ),
            borderRadius: BorderRadius.circular(16),
          )),
          onPressed: () {},
          child: ListTile(
            visualDensity:
                const VisualDensity(vertical: VisualDensity.minimumDensity),
            leading: SvgPicture.asset(image),
            title: Text(
              title,
              style: AppStyles.semiBold16,
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
