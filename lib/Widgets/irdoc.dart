import 'package:flutter/material.dart';
import 'package:telas/telas/diagonisto_sensores.dart';

class BotaoIrParaTerceiraTela extends StatelessWidget {
  final String textoirdoc;
  const BotaoIrParaTerceiraTela({Key? key, required this.textoirdoc,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Ajuste a margem externa conforme necessário
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DiagonisticoSensores()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF487050),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(width: 1, color: Colors.black), // Ajuste a espessura e a cor da borda
          ),
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          fixedSize: Size(170, 60), // Ajuste o tamanho total do botão
        ),
        child: Text(textoirdoc), // Use textoirdoc como o texto do botão
      ),
    );
  }
}