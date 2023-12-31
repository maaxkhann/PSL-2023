import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const CustomAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
    //  centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
