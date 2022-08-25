import 'package:chatting_app/config/palette.dart';
import 'package:chatting_app/widget/back_ground.dart';
import 'package:chatting_app/widget/login_button.dart';
import 'package:chatting_app/widget/submit_widget.dart';
import 'package:chatting_app/widget/text_form.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  final _formKey = GlobalKey<FormState>();
  String userName = '';
  String userEmail = '';
  String userPassword = '';

  void _tryValidation() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            BackGroundWidget(isChecked: isSignupScreen),
            TextFormWidget(
              isChecked: isSignupScreen,
              isName: userName,
              isEmail: userEmail,
              isPassword: userPassword,
              tryValid: _tryValidation,
            ),
            SubmitButtonWidget(
              isChecked: isSignupScreen,
              tryValid: _tryValidation,
            ),
            LoginButtonWidget(isChecked: isSignupScreen),
          ],
        ),
      ),
    );
  }
}
