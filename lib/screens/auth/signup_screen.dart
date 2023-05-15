import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:myplants/screens/auth/widgets/logo_image.dart';
import 'package:myplants/utils/constants/colores.dart';
import 'package:myplants/utils/constants/text_styles.dart';

import '../../widgets/input_text_widget.dart';
import '../../widgets/primary_button.dart';
import 'otp_verification_screen.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
   
   SignUpScreen({super.key});

  static const String routeName = '/sign_up';

  static Route route() => MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => SignUpScreen());

  //text input controllers
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h,),
        
              const LogoImage(),
              SizedBox(height: 56.h,),
              Text('Sign Up', style: AppFontStyle.title1),
              SizedBox(height: 30.h,),
        
              //fullname
              InputeTextWidgets(
                
                name: 'Full Name',
                inputType: TextInputType.text,
              ),
              SizedBox(height: 20.h,),
              //emai; address
              InputeTextWidgets(
                
                name: 'Email Address',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.h,),
              //password
              InputeTextWidgets(
                
                name: 'Password',
                isPasswordField: true,
              ),
              SizedBox(height: 20.h,),
              //confirm Password
              InputeTextWidgets(
               
                name: 'Password',
                isPasswordField: true,
              ),
              SizedBox(height: 20.h,),
              //check box
              Row(
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
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I accepted ",
                          style: AppFontStyle.body1
                              .copyWith(color: AppColors.kBlack),
                        ),
                        TextSpan(
                          text: "Terms&privacy Policy",
                          style: AppFontStyle.body1
                              .copyWith(color: AppColors.kMossGreen),
                          recognizer: TapGestureRecognizer()..onTap = () => null,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 40.h,),
        
              //signup button
              PrimaryButton(
                name: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, OTPverificationScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
