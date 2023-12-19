import 'package:flutter/material.dart';

class MyAppBartranspare extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Image.asset(
          'assets/images/seta-esquerda.png',
          width: 24,
          height: 24,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
