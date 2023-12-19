import 'package:flutter/material.dart';
import 'package:telas/widgets/appbar.dart';
import 'package:telas/widgets/botao_tela1.dart';

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF87A586),
      appBar: MyAppBartranspare(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fundoatt.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 57, 99, 66),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.all(16),
              width: 250,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotaoTela1(
                    texto: 'Posso ajudar?',
                    onPressed: () {
                      // Adicione a navegação para a tela correspondente aqui
                    },
                  ),
                   BotaoTela1(
                    texto: 'Solicitar técnico',
                    onPressed: () {
                      // Adicione a navegação para a tela correspondente aqui
                    },
                  ),
                   BotaoTela1(
                    texto: 'Problemas com acesso',
                    onPressed: () {
                      // Adicione a navegação para a tela correspondente aqui
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
