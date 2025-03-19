import 'package:flutter/material.dart';
import 'package:tourism_company/const.dart';
import 'package:tourism_company/widgets/custom_botton.dart';
import 'package:tourism_company/widgets/custom_divider.dart';
import 'package:tourism_company/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  static String id = 'register';
  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kSColor,
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: kSColor,
        title: Center(
          child: Text(
            'ClinicApp',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: Padding(
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
                    fontColor: Colors.black,
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
                    text: 'SIGN UP',
                    backGroundColor: kSColor,
                    font: subheadingsText,
                    width: 100,
                    height: 40,
                    fontColor: Colors.black,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.person, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'First name',
                  width: screenWidth / 2.5,
                  font: headingText,
                  onChanged: (data) {
                    email = data;
                  },
                ),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Last name',
                  width: screenWidth / 2.5,
                  font: headingText,
                  onChanged: (data) {
                    email = data;
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Email',
                  width: screenWidth - 70,
                  font: headingText,
                  onChanged: (data) {
                    email = data;
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Phone',
                  width: screenWidth - 70,
                  font: headingText,
                  onChanged: (data) {
                    email = data;
                  },
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.lock_open, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Passsword',
                  width: screenWidth - 70,
                  font: headingText,
                  onChanged: (data) {
                    password = data;
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check, color: kPColor, size: 30),
                SizedBox(width: 8),
                CustomTextField(
                  text: 'Verfied Passsword',
                  width: screenWidth - 70,
                  font: headingText,
                  onChanged: (data) {
                    password = data;
                  },
                ),
              ],
            ),

            CustomBottom(
              text: 'Register',
              backGroundColor: kPColor,
              font: subheadingsText,
              width: double.infinity,
              height: 50,
              fontColor: kSColor,
            ),

            CustomDivider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(
                  text: 'Google',
                  backGroundColor: kPColor,
                  font: subheadingsText,
                  width: (screenWidth / 2) - 30,
                  height: 50,
                  fontColor: kSColor,
                ),

                SizedBox(width: 20),

                CustomBottom(
                  text: 'Facebook',
                  backGroundColor: kPColor,
                  font: subheadingsText,
                  width: (screenWidth / 2) - 30,
                  height: 50,
                  fontColor: kSColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
