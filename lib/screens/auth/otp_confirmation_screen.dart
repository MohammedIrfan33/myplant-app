import 'package:flutter/material.dart';
import 'widgets/confirm_widget.dart';

class OTPConfirmationScreen extends StatelessWidget {
  const OTPConfirmationScreen({Key? key}) : super(key: key);

  static const routeName = '/OTP_confirmation_screen';

  static Route route() => MaterialPageRoute(
      settings: const RouteSettings(name: '/OTP_confirmation_screen'),
      builder: (_) => const OTPConfirmationScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConfirmatonWidget(
          image: 'assets/image/verfication_logo.png',
          title: 'Account Created',
          subTitle: 'Your account has been sucessfully\n created!',
          onPressed: () {
            print('ok');
          },
        ),
      ),
    );
  }
}
