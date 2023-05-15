import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myplants/screens/auth/password_changed_screen.dart';
import 'package:myplants/utils/constants/text_styles.dart';
import 'package:myplants/widgets/input_text_widget.dart';
import 'package:myplants/widgets/primary_button.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  static const routeName = '/reset_password';

  static Route route() => MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => ResetPassword(),
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
                  'Reset Password',
                  style: AppFontStyle.title1,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              //new password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputeTextWidgets(
                  
                  name: 'New Password',
                  inputType: TextInputType.visiblePassword,
                  isPasswordField: true,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //confirm password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputeTextWidgets(
                 
                  name: 'Confirm Password',
                  inputType: TextInputType.visiblePassword,
                  isPasswordField: true,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              //rest password button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryButton(
                  name: 'Reset Password',
                  onPressed: () {
                    Navigator.pushNamed(context, PasswordChangedScreen.routeName);
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
