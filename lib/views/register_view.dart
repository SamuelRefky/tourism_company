import 'package:flutter/material.dart';
import 'package:tourism_company/const.dart';
import 'package:tourism_company/widgets/custom_botton.dart';
import 'package:tourism_company/widgets/custom_divider.dart';
import 'package:tourism_company/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static String id = 'Register';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: kSColor,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bright star',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: kTColor,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'your entertainment is our priority',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kTColor,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(gradient: kSGradient),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    alignment: Alignment.bottomCenter,
                    child: CustomBottom(
                      text: 'Login',
                      backGroundColor: kSColor,
                      font: subheadingsText,
                      width: 100,
                      height: 40,
                      fontColor: kTColor,
                      ontap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  SizedBox(width: 80),

                  Container(
                    height: 70,
                    alignment: Alignment.topCenter,
                    child: CustomBottom(
                      text: 'Sign Up',
                      backGroundColor: kSColor,
                      font: subheadingsText,
                      width: 100,
                      height: 40,
                      fontColor: kTColor,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 8),
              CustomTextField(
                text: 'Enter your Name',
                width: screenWidth - 70,
                font: headingText,
                icon: Icon(Icons.person, color: Color(0xff70706E)),
                onChanged: (data) {
                  email = data;
                },
              ),
              SizedBox(width: 8),
              CustomTextField(
                text: 'Enter your email ',
                width: screenWidth - 70,
                font: headingText,
                icon: Icon(Icons.email, color: Color(0xff70706E)),
                onChanged: (data) {
                  email = data;
                },
              ),

              CustomTextField(
                text: 'Password ',
                width: screenWidth - 70,
                font: headingText,
                icon: Icon(Icons.lock_rounded, color: Color(0xff70706E)),
                onChanged: (data) {
                  email = data;
                },
              ),
              SizedBox(width: 8),
              CustomTextField(
                text: 'Verified Password ',
                width: screenWidth - 70,
                font: headingText,
                icon: Icon(Icons.email, color: Color(0xff70706E)),
                onChanged: (data) {
                  email = data;
                },
              ),
              CustomBottom(
                text: 'Forgot Password?',
                borderColor: Colors.black.withAlpha(0),
                font: bodyText,
                width: double.infinity,
                height: 30,
                fontColor: kTColor,
              ),

              CustomBottom(
                text: 'Register',
                backGroundColor: kPColor,
                borderColor: kPColor,
                font: subheadingsText,
                width: double.infinity,
                height: 50,
                fontColor: kTColor,
              ),

              CustomDivider(),

              CustomBottom(
                text: 'Continue with Google',
                borderColor: Colors.red,
                font: subheadingsText,
                width: double.infinity,
                height: 50,
                fontColor: Colors.red,
              ),

              SizedBox(width: 20),

              CustomBottom(
                text: 'Continue with Facebook',
                borderColor: Colors.blue,
                font: subheadingsText,
                width: double.infinity,
                height: 50,
                fontColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
