import 'package:flutter/material.dart';
import 'package:tourism_company/const.dart';
import 'package:tourism_company/views/register_view.dart';
import 'package:tourism_company/widgets/custom_botton.dart';
import 'package:tourism_company/widgets/custom_divider.dart';
import 'package:tourism_company/widgets/custom_text_field.dart';
import 'package:tourism_company/widgets/no_animation_page_route.dart';

// ignore: must_be_immutable
class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                    alignment: Alignment.topCenter,
                    child: CustomBottom(
                      text: 'Login',
                      backGroundColor: kSColor,
                      font: subheadingsText,
                      width: 100,
                      height: 40,
                      fontColor: kTColor,
                    ),
                  ),

                  SizedBox(width: 80),

                  Container(
                    height: 70,
                    alignment: Alignment.bottomCenter,
                    child: CustomBottom(
                      text: 'Sign Up',
                      backGroundColor: kSColor,
                      font: subheadingsText,
                      width: 100,
                      height: 40,
                      fontColor: kTColor,
                      ontap: () {
                        Navigator.push(
                          context,
                          NoAnimationPageRoute(page: RegisterView()),
                        );
                      },
                    ),
                  ),
                ],
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
              CustomBottom(
                text: 'Forgot Password?',
                borderColor: Colors.black.withAlpha(0),
                font: bodyText,
                width: double.infinity,
                height: 30,
                fontColor: kTColor,
              ),

              CustomBottom(
                text: 'Login',
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
