import 'package:flutter/material.dart';
import 'package:telas/telas/reconmenda.dart';

class BotaoIrParaSegundaTela extends StatelessWidget {
  const BotaoIrParaSegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0), // Ajuste a margem externa conforme necessário
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Reconmenda()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF396342),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(width: 1, color: Colors.black), // Ajuste a espessura e a cor da borda
          ),
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          fixedSize: Size(290, 60), // Ajuste o tamanho total do botão
        ),
        child: Text('Recomendações'),
      ),
    );
  }
}
