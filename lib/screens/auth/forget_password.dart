import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:myplants/screens/auth/reset_password.dart';
import 'package:myplants/utils/constants/text_styles.dart';
import 'package:myplants/widgets/input_text_widget.dart';
import 'package:myplants/widgets/primary_button.dart';

class ForgetetaPassword extends StatelessWidget {
  const ForgetetaPassword({super.key});

  static const routeName = '/forget_password';

  static Route route() => MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const ForgetetaPassword(),
      );

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 77.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Forgot Password',
                  style: AppFontStyle.title1,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              //email address
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputeTextWidgets(
                  
                  name: 'Email  Address',
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              //submit button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryButton(
                  name: 'Submit',
                  onPressed: () {
                    Navigator.pushNamed(context, ResetPassword.routeName);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
