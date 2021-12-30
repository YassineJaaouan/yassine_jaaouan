import 'package:flutter/material.dart';

// Log In Style
const selectedAuthTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);
const titleLogInTextStyle = TextStyle(
  fontSize: 28.0,
  color: Colors.white,
);

const txLogInTextStyle = TextStyle(
  color: Colors.white,
);
 final unselectedAuthTextStyle = TextStyle(
   fontSize: 18.0,
  color: Colors.white.withOpacity(0.5),
);

const labelLoginTextStyle = TextStyle(
  color: Color(0xff707070),
);

const borderLoginTxField=BorderSide(color: Color(0xff707070), width: 1.0);

final ButtonStyle styleLogInButton = ElevatedButton.styleFrom(
  // textStyle: const TextStyle(fontSize: 14,color: Colors.white),
  fixedSize: const Size.fromHeight(60.0),
  primary: Color(0xff134147),
  onPrimary: Colors.white,
);
final ButtonStyle styleLogInGoogleButton = ElevatedButton.styleFrom(
  // textStyle: const TextStyle(fontSize: 14,color: Colors.white),
  fixedSize: const Size.fromHeight(60.0),
  primary: Color(0xff256168),
  onPrimary: Colors.white,//change text color of button
);

// Sign Up Style

const titleSignUpTextStyle = TextStyle(
  fontSize: 28.0,
  color: Colors.white,
);

const txSignUpTextStyle = TextStyle(
  color: Colors.white,
);
const labelTxSignUpTextStyle = TextStyle(
  color: Color(0xff707070),
);

const borderTxField=BorderSide(color: Color(0xff707070), width: 1.0);

final ButtonStyle styleSignUpButton = ElevatedButton.styleFrom(
  // textStyle: const TextStyle(fontSize: 14,color: Colors.white),
  fixedSize: const Size.fromHeight(60.0),
  primary: Color(0xff1F4B50),
  onPrimary: Colors.white,
);

//home Style

const homeTextStyle = TextStyle(
  color: Color(0xff19295C),
  fontSize: 14.0,
  fontWeight: FontWeight.bold
);

const subtitleTextStyle = TextStyle(
    color: Color(0xffB8BAC3),
    fontSize: 11.0,
    fontWeight: FontWeight.bold
);

//Upload style

const uploadTextStyle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.normal
);

final ButtonStyle uploadButtonStyle = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 16),
  fixedSize:  Size(180, 55),
  primary: Color(0xff256168),
  onPrimary: Colors.white,
);



