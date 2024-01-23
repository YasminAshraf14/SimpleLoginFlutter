// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:simple_login/app_colors.dart';

class CustomTextFormField extends StatelessWidget {

  String label;
  TextInputType keyboardType;
  Widget? suffixIcon;

  CustomTextFormField({required this.label, required this.keyboardType, this.suffixIcon});

  CustomTextFormField.text({required this.label})
      : keyboardType = TextInputType.text;

  CustomTextFormField.password({this.label = 'Password'})
      : keyboardType = TextInputType.visiblePassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: Text(
          label,
          style: TextStyle(
              fontSize: 18,
              color: AppColors.notFocusedColor
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.notFocusedColor,
              width: 0.5
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //contentPadding:
      ),
      style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.normal
      ),
    );
  }
}
