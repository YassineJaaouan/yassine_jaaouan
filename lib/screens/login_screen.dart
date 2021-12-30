import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_technique/screens/home_screen.dart';
import 'package:test_technique/screens/signup_screen.dart';
import 'package:test_technique/utilities/constant.dart';
import 'custom_page_route.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);
  static const routeName = '/LogIn';
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _secureText = true;

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
                    color: Theme.of(context).primaryColor,
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
                                    child: Container(
                                        padding: EdgeInsets.only(bottom: 20),
                                        margin: EdgeInsets.only(right: 30),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.white,
                                              width: 3.0,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Log In',
                                          style: selectedAuthTextStyle,
                                        ))),
                                Expanded(
                                    flex: 2,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(CustomPageRoute(
                                            child: SignUpScreen(),
                                            direction: AxisDirection.left));
                                      },
                                      child: Container(
                                          padding: EdgeInsets.only(bottom: 20),
                                          margin: EdgeInsets.only(right: 30),
                                          child: Text(
                                            'Sign Up',
                                            style: unselectedAuthTextStyle,
                                          )),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SvgPicture.asset(
                          'assets/icons/login.svg',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Log In to Account',
                          style: titleLogInTextStyle,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextField(
                          style: txLogInTextStyle,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "EMAIL",
                            labelStyle: labelLoginTextStyle,
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderLoginTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderLoginTxField,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: txLogInTextStyle,
                          obscureText: _secureText,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "PASSWORD",
                            labelStyle: labelLoginTextStyle,
                            suffixIcon: IconButton(
                              icon: Icon(_secureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderLoginTxField,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: borderLoginTxField,
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Forgot Password?",
                                style: txLogInTextStyle,
                              ),
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                            width: deviceSize.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(CustomPageRoute(
                                    child: HomeScreen(),
                                    direction: AxisDirection.left));
                              },
                              child: Text('Log In'),
                              style: styleLogInButton,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(children: <Widget>[
                          Expanded(
                            child: new Container(
                                margin:
                                    const EdgeInsets.only(left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Color(0xffABB3BB),
                                  height: 50,
                                )),
                          ),
                          Text(
                            "Or",
                            style: const TextStyle(color: Color(0xffABB3BB)),
                          ),
                          Expanded(
                            child:  Container(
                                margin:
                                    const EdgeInsets.only(left: 15.0, right: 10.0),
                                child: Divider(
                                  color: Color(0xffABB3BB),
                                  height: 50,
                                )),
                          ),
                        ]),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: deviceSize.width,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print('Pressed');
                              },
                              icon: SvgPicture.asset(
                                'assets/icons/google.svg',
                              ),
                              label: Text('Log In with Google'),
                              style: styleLogInGoogleButton,
                            )),
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
