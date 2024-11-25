import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.textInputType,
    this.icon,
  });

  final String hintText;
  final TextInputType? textInputType;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: Icon(icon,color: const Color(0xffC9CECF),),
        hintText: hintText,
        hintStyle: AppStyles.bold13.copyWith(color: const Color(0xff949D9E)),
        fillColor: const Color(0xFFF9FAFA),
        filled: true,
        border: buildOutlineInputBoarder(),
        enabledBorder: buildOutlineInputBoarder(),
        focusedBorder: buildOutlineInputBoarder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBoarder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xffE6E9E9),
      ),
    );
  }
}
