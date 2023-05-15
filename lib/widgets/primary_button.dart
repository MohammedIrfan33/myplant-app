import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myplants/utils/constants/colores.dart';
import 'package:myplants/utils/constants/text_styles.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key,required this.name,required this.onPressed});

  final String name;
  final Function onPressed;
  

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 60.h,
  width: double.infinity,
  decoration: BoxDecoration(
    color: AppColors.kMossGreen,
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: TextButton(
    onPressed: (){
      onPressed();
    },
    child: Text(
       name,
      style: AppFontStyle.caption1.copyWith(
        color: AppColors.kWhite
      )
    ),
  ),
);
  }
}