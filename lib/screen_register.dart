// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_login/app_colors.dart';
import 'package:simple_login/widget_custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "WELCOME",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 50,),
            CustomTextFormField.text(label: 'Name',),
            SizedBox(height: 30,),
            CustomTextFormField.text(label: 'Email',),
            SizedBox(height: 30,),
            CustomTextFormField.password(),
            SizedBox(height: 30,),
            CustomTextFormField.password(label: 'Confirm Password',),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(8),
                backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: AppColors.onPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account?',
                  style: TextStyle(
                      color: AppColors.notFocusedColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
