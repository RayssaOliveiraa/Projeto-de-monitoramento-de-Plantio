import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:telas/telas/LoginScreen.dart';
import 'package:telas/telas/SettingsScreen.dart';
import 'package:telas/telas/diagonisto_sensores.dart';
import 'package:telas/telas/tela1.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF94B092),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            if (kDebugMode) {
              print("Voltar");
            }
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15.0),
            child: Image.asset(
              'images/seta-esquerda.png',
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 140.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(
                      label: 'Diagnóstico de sensores',
                      image: 'images/umidade.png',
                      onPressed: () {
                        if (kDebugMode) {
                          print("Diagnóstico de sensores");
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DiagonisticoSensores()),
                        );
                      },
                    ),
                    const SizedBox(height: 14.0),
                    buildButton(
                      label: 'Configurações',
                      onPressed: () {
                        if (kDebugMode) {
                          print("Configurações");
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SettingsScreen()),
                        );
                      },
                      image: 'images/configuracao.png',
                    ),
                    const SizedBox(height: 14.0),
                    buildButton(
                      label: 'Suporte',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tela1()),
                        );
                      },
                      image: 'images/suporte.png',
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 50.0,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Sair");
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF396342),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/sair.png',
                        height: 30.0,
                        width: 30.0,
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        'Sair',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton({
    required String label,
    required String image,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 80.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(color: Colors.black),
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF396342),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              image,
              height: 40.0,
              width: 40.0,
            ),
            const SizedBox(width: 16.0),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
