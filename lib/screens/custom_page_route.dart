import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;
  CustomPageRoute({required this.child,required this.direction}) : super(
      transitionDuration: Duration(seconds: 1),
      pageBuilder: (context,animation,secondaryAnimation)=> child);


  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) =>
    SlideTransition(
      position: Tween<Offset>(
        begin: getBeginOffset(),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
    // return super.buildTransitions(context, animation, secondaryAnimation, child);

  Offset getBeginOffset() {
    switch(direction) {
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
      default: {
        return Offset(1, 0);
      }
    }
  }

}