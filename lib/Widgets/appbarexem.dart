import 'package:flutter/material.dart';

class AppBarexem extends StatelessWidget implements PreferredSizeWidget {
  const AppBarexem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Image.asset('assets/img_seta_esquerda_3.png'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
