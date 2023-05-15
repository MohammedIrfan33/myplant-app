import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myplants/utils/constants/colores.dart';
import 'package:myplants/utils/constants/text_styles.dart';


// ignore: must_be_immutable
class InputeTextWidgets extends StatelessWidget {
  const InputeTextWidgets({
    super.key,
   
    required this.name,
    this.inputType,
     this.onSaved,
    this.validator,
    this.isPasswordField = false,
  });

  
  final TextInputType? inputType;
  final String name;
  final bool isPasswordField;
  final FormFieldSetter<String> ?onSaved;
  final FormFieldValidator<String> ? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     
      keyboardType: inputType ?? TextInputType.text,
      obscureText: isPasswordField,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16.r),
        ),
        hintText: name,
        hintStyle: AppFontStyle.body1.copyWith(color: AppColors.kBorderGrey),
        contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
        enabled: true,
        filled: true,
        fillColor: AppColors.kWhite,
      ),
    );
  }
}
