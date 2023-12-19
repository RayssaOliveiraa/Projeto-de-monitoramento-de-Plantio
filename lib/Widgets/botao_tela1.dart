import 'package:flutter/material.dart';

class BotaoTela1 extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  BotaoTela1({required this.texto, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 89, 123, 96),
        minimumSize: Size(200, 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
          side: BorderSide(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 1.0,
          ),
        ),
      ),
      child: Text(
        texto,
        style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
