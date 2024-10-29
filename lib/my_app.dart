import 'package:flutter/material.dart';
import 'package:qt/pages/choose_page.dart';
import 'package:qt/pages/description_page.dart';
import 'package:qt/pages/login_page.dart';
import 'package:qt/pages/profile_page.dart';
import 'package:qt/pages/registration_page.dart';
import 'package:qt/pages/teachers_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginPage(),
      routes: {
        RegistrationPage.routeName:(context) => const RegistrationPage(),
        LoginPage.routeName:(context) => const LoginPage(),
        DescriptionPage.routeName:(context) => const DescriptionPage(),
        ChoosePage.routeName:(context) => const ChoosePage(),
        ProfilePage.routeName:(context) => const ProfilePage(),
        TeacherPage.routeName:(context) => const TeacherPage(),
      },
    );
  }
}