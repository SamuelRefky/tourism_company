import 'package:flutter/material.dart';
import 'package:tourism_company/views/login_view.dart';
import 'package:tourism_company/views/register_view.dart';

void main() {
  runApp(const TourismCompany());
}

class TourismCompany extends StatelessWidget {
  const TourismCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => LoginView(),
        RegisterView.id: (context) => RegisterView(),
      },
      initialRoute: LoginView.id,
    );
  }
}
