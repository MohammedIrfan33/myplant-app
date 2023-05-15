import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myplants/screens/auth/forget_password.dart';
import 'package:myplants/screens/auth/signup_screen.dart';
import 'package:myplants/screens/auth/widgets/logo_image.dart';
import 'package:myplants/utils/constants/colores.dart';
import 'package:myplants/utils/constants/text_styles.dart';
import 'package:myplants/widgets/input_text_widget.dart';
import 'package:myplants/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const routeName = '/login';

  static Route route() => MaterialPageRoute(
      settings: const RouteSettings(name: '/login'),
      builder: (_) => LoginScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
              ),
              const LogoImage(),
              SizedBox(
                height: 56.h,
              ),
              Text('Login', style: AppFontStyle.title1),
              SizedBox(height: 30.h),
              //email address
              InputeTextWidgets(
                name: 'Email Address',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.h),
              //password
              InputeTextWidgets(
                name: 'Password',
                inputType: TextInputType.visiblePassword,
                isPasswordField: true,
              ),
              SizedBox(height: 20.h),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          value: false,
                          onChanged: (newValue) {
                            // Add your onChanged function here
                          },
                        ),
                        Text('Remember me', style: AppFontStyle.body1),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ForgetetaPassword.routeName);
                    },
                    child: Text(
                      'Forget Password ?',
                      style: AppFontStyle.body1.copyWith(color: AppColors.kBlack),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              //login
              PrimaryButton(
                name: 'Login',
                onPressed: () {},
              ),
              const Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have a account?",
                      style:
                          AppFontStyle.body1Bold.copyWith(color: AppColors.kBlack),
                    ),
                    TextSpan(
                      text: "Sign Up",
                      style:
                          AppFontStyle.body1.copyWith(color: AppColors.kMossGreen),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Navigator.pushNamed(context, SignUpScreen.routeName),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
