import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/post_list_home.dart';
import 'screens/signup_screen.dart';
import 'utilities/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Palette.kToDark,
      ),
      debugShowCheckedModeBanner: false,
      // home: LogInScreen(),
      initialRoute: LogInScreen.routeName,
      routes: {
        LogInScreen.routeName:(ctx)=>LogInScreen(),
        SignUpScreen.routeName:(ctx)=>SignUpScreen(),
        HomeScreen.routeName:(ctx)=>HomeScreen(),
        PostListHome.routeName:(ctx)=>PostListHome(),
      },

    );
  }
}

