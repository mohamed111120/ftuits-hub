import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar buildAppBar(
  BuildContext context, {
  required String text,
}) {
  return AppBar(
    backgroundColor:  Colors.transparent,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(
      text,
      style: AppStyles.bold19,
    ),
  );
}
