import 'package:flutter/material.dart';

class Widgetlabeltransparente extends StatelessWidget {
  final String param;
  final String lablText;

  const Widgetlabeltransparente({
    Key? key,
    required this.param,
    required this.lablText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(  // Define a largura do Container
      width: 290,
      height: 42, 
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFF597B60),
        borderRadius: BorderRadius.circular(15),
        //border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text("$lablText $param", style: TextStyle(color: Colors.white,
          fontSize: 20)),
        ],
      ),
    );
  }
}
