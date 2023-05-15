import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:myplants/screens/auth/otp_confirmation_screen.dart';
import 'package:myplants/screens/auth/widgets/verify_box.dart';
import 'package:myplants/utils/constants/colores.dart';
import 'package:myplants/utils/constants/text_styles.dart';


import '../../widgets/primary_button.dart';

class OTPverificationScreen extends StatelessWidget {
  const OTPverificationScreen({Key? key}) : super(key: key);

  static const String routeName = '/otp_verification';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const OTPverificationScreen(),
    );
  }

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
                child: Text('Verification', style: AppFontStyle.title1),
              ),
              SizedBox(
                height: 30.h,
              ),
        
              //otp boxes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    //otp box1
                    VerifyOTPBox(),
                    //otp box2
                    VerifyOTPBox(),
                    //otp box3
                    VerifyOTPBox(),
                    //otp box4
                    VerifyOTPBox(),
                    //otp box5
                    VerifyOTPBox(),
                    //otp box6
                    VerifyOTPBox(),
                  ],
                ),
              ),
        
              SizedBox(
                height: 50.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryButton(
                  name: 'Verify',
                  onPressed: () {
                    Navigator.pushNamed(context, OTPConfirmationScreen.routeName);
                  },
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
        
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t reccive code?",
                      style:
                          AppFontStyle.body1Bold.copyWith(color: AppColors.kBlack),
                    ),
                    TextSpan(
                      text: "Resend",
                      style:
                          AppFontStyle.body1.copyWith(color: AppColors.kMossGreen),
                      recognizer: TapGestureRecognizer()..onTap = () => null,
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
