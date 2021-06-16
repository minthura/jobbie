import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:jobbie/constants.dart';
import 'package:jobbie/views/screens/signup_screen.dart';
import 'package:jobbie/views/widgets/jobbie_button.dart';
import 'package:jobbie/views/widgets/jtext_form_field.dart';
import 'package:jobbie/views/widgets/jtext_form_field_v2.dart';
import 'package:jobbie/views/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  static const route = '/login';
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                color: kPrimaryColor,
                child: SafeArea(
                    child: Text(
                  'Welcome Back',
                  style: Get.textTheme.headline4,
                )),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      child: Column(
                        children: [
                          JTextFormField2(
                            labelText: 'Email',
                            prefixIcon: CupertinoIcons.mail,
                            textInputType: TextInputType.emailAddress,
                          ),
                          JTextFormField2(
                            labelText: 'Password',
                            prefixIcon: CupertinoIcons.lock,
                            suffixIcon: CupertinoIcons.eye,
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: kButtonColor,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Login'),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'Or login with',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SocialButton(
                                imagePath: 'assets/images/facebook.png',
                                onPressed: () {},
                              ),
                              SocialButton(
                                imagePath: 'assets/images/google.png',
                                onPressed: () {},
                              ),
                              SocialButton(
                                imagePath: 'assets/images/linkedin.png',
                                onPressed: () {},
                              ),
                              SocialButton(
                                imagePath: 'assets/images/twitter.png',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New to Jobiee?',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.offAndToNamed(SignUpScreen.route);
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
