import 'package:flutter/material.dart';
import 'widgets/confirm_widget.dart';


class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({Key? key}) : super(key: key);

  static const routeName = '/password_changed';

  static Route route() => MaterialPageRoute(
      settings: const RouteSettings(name: '/password_changed'),
      builder: (_) => const PasswordChangedScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConfirmatonWidget(
          image: 'assets/image/passwordkey.png',
          title: 'Password Changed',
          subTitle: 'Your password has been successfully\n changed!',
          onPressed: (){
            print('ok');
          },
          
        ),
      ),
    );
  }
}

