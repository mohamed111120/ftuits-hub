import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_fuctions/build_app_bar.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, text: 'تسجيل الدخول'),
      body: const LoginViewBody(),
    );
  }


}
