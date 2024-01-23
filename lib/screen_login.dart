// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_login/app_colors.dart';
import 'package:simple_login/screen_register.dart';
import 'package:simple_login/widget_custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello !",
              style: TextStyle(
                  color: AppColors.notFocusedColor,
                  fontSize: 26,
                  fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 8,),
            Text(
              "WELCOME BACK",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 50,),
            CustomTextFormField.text(label: 'Email',),
            SizedBox(height: 30,),
            CustomTextFormField.password(),
            SizedBox(height: 35,),
            TextButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                ),
              )
            ),
            SizedBox(height: 25,),
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
                    "Log in",
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
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegisterScreen(),)
                  );
                },
                child: Center(
                  child: Text(
                    "SIGN UP",
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
      ),
    );
  }
}
