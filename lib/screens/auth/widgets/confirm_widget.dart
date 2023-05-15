import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myplants/utils/constants/text_styles.dart';

import '../../../widgets/primary_button.dart';

class ConfirmatonWidget extends StatelessWidget {
  const ConfirmatonWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  }) : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 140.h,
            width: 140.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            title,
            style: AppFontStyle.title1,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subTitle,
            style: AppFontStyle.body1,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            height: 60.h,
            width: 176.w,
            child: PrimaryButton(
              name: 'ok',
              onPressed: onPressed,
            ),
          )
        ],
      ),
    );
  }
}
