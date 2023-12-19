import 'package:flutter/material.dart';
import 'package:telas/widgets/widgetlabel.dart';

class Caixaparantime extends StatelessWidget {
  const Caixaparantime({
    Key? key,
    required this.paramText,
    required this.lablText,
    required this.paramText2,
    required this.lablText2,
    
  }) : super(key: key);

  final String paramText;
  final String lablText;
  final String paramText2;
  final String lablText2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 130,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFF396342),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(width: 10), // Adiciona um espaçamento entre o CircleAvatar e a Column
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Widgetlabeltransparente(param: paramText, lablText: lablText),
                  Widgetlabeltransparente(param: paramText2, lablText: lablText2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
