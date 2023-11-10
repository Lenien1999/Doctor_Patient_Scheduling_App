import 'package:doctor_patient_sch_app/auth/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/app_style.dart';
import '../constants/navigation_widget.dart';
import '../constants/text_field.dart';
import '../constants/textstyle.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/splash.png',
                    color: AppColor.bgColor(),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFielWidget(
                    controller: email,
                    icon: Icons.email,
                    title: 'Email',
                    isTrailing: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFielWidget(
                    controller: password,
                    icon: Icons.fingerprint,
                    title: 'Password',
                    isTrailing: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFielWidget(
                    controller: phoneNumber,
                    icon: Icons.phone_sharp,
                    title: 'Phone Number',
                    isTrailing: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  NavigationWidget(
                    title: 'Sign Up',
                    tap: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'OR',
                    style: textStyle(
                        size: 18, weight: FontWeight.w600, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(
                                  side: BorderSide(
                                      color: Colors.grey.withOpacity(0.2)))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/fb.png'),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(
                                  side: BorderSide(
                                      color: Colors.grey.withOpacity(0.2)))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 40,
                              height: 37,
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Already have an Account?",
                      style: textStyle(
                          size: 16,
                          weight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginScreen();
                          }));
                        },
                      text: " Sign in",
                      style: textStyle(
                          size: 16,
                          weight: FontWeight.w500,
                          color: AppColor.backColor()),
                    ),
                  ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
