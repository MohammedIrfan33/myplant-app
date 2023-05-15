import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myplants/routes/approute.dart';

import 'package:myplants/screens/auth/login_screen.dart';
import 'package:myplants/utils/constants/colores.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: LoginScreen.routeName,
        
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kScreenBgColor,
          fontFamily: 'Gilroy'
        
        ),
        
        
      ),
    );
  }
}