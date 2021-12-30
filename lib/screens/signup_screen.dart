import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_technique/screens/login_screen.dart';
import 'package:test_technique/utilities/constant.dart';

import 'custom_page_route.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const routeName = '/SignUp';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _secureText = true;
  bool _secureTextTwo = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: deviceSize.height,
                  width: deviceSize.width,
                  decoration: BoxDecoration(
                    color: Color(0xff134147),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: Container(
                            // padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white.withOpacity(0.05),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        CustomPageRoute(
                                            child: LogInScreen(),
                                            direction: AxisDirection.right));
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      margin: EdgeInsets.only(right: 30),
                                      child: Text(
                                        'Log In',
                                        style: selectedAuthTextStyle,
                                      )),
                                )),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                        padding: EdgeInsets.only(bottom: 20),
                                        margin: EdgeInsets.only(right: 120),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.white,
                                              width: 3.0,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Sign Up',
                                          style: unselectedAuthTextStyle,
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SvgPicture.asset(
                          'assets/icons/signup.svg',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Create Account',
                          style: titleSignUpTextStyle,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextField(
                          style: txSignUpTextStyle,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "FirstName",
                            labelStyle: labelTxSignUpTextStyle,
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: txSignUpTextStyle,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: labelTxSignUpTextStyle,
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: txSignUpTextStyle,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "EMAIL",
                            labelStyle: labelTxSignUpTextStyle,
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: txSignUpTextStyle,
                          obscureText: _secureText,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "PASSWORD",
                            labelStyle: labelTxSignUpTextStyle,
                            suffixIcon: IconButton(
                              icon: Icon(_secureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility),
                              color: Color(0xff707070),
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: txSignUpTextStyle,
                          obscureText: _secureTextTwo,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "CONFIRM PASSWORD",
                            labelStyle: labelTxSignUpTextStyle,
                            suffixIcon: IconButton(
                              icon: Icon(_secureTextTwo
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility),
                              color: Color(0xff707070),
                              onPressed: () {
                                setState(() {
                                  _secureTextTwo = !_secureTextTwo;
                                });
                              },
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderTxField,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.0,
                                width: 20.0,
                                child: Checkbox(
                                  value: false,
                                  onChanged: null,
                                  side: const BorderSide(
                                    color: Color(0xff707070),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'I agree to ',
                                  style: txLogInTextStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Terms & Conditions',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: deviceSize.width,
                          child: ElevatedButton(
                            onPressed: () {
                              print('Pressed');
                            },
                            child: Text('Save'),
                            style: styleSignUpButton,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
