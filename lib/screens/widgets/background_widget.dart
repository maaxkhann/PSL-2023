import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {

  final Widget child;
  final EdgeInsets padding;

  const BackgroundWidget({Key? key, required this.child, required this.padding,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'), fit: BoxFit.fill
          )
      ),
      child: child,
    );
  }
}