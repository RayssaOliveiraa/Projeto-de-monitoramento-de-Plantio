import 'package:flutter/material.dart';
import 'package:telas/widgets/caixa_paran.dart';
import 'package:telas/widgets/appbarexem.dart';
import 'package:telas/widgets/caixatime.dart';
import 'package:telas/widgets/widgettraslcid.dart';
import 'package:telas/widgets/irrec.dart';
import 'package:telas/widgets/irdoc.dart';

class ExemploCultura extends StatefulWidget {
  ExemploCultura({Key? key}) : super(key: key);

  @override
  State<ExemploCultura> createState() => _ExemploCulturaState();
}

class _ExemploCulturaState extends State<ExemploCultura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF87A586),
      extendBodyBehindAppBar: true,
      appBar: AppBarexem(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/img_background.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + kToolbarHeight), // Adiciona um padding no topo igual à altura da AppBar
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WidgetTranslucidoTexto(
                      texto: "Tomate",
                      corTexto: Colors.white,
                      corFundo: Color.fromARGB(255, 60, 85, 59),
                      tamanhoTexto: 35.0,
                      largura: 285.0,
                      altura: 65.0,
                    ),
                    Caixaparan(
                      paramText: "60% - 70°",
                      lablText: "Umidade ideal:",
                      paramText2: "40%",
                      lablText2: "Umidade real:",
                      circleAvatarColor: Colors.red,
                    ),
                    Caixaparan(
                      paramText: "6.0 - 6,8",
                      lablText: "PH ideal:",
                      paramText2: "5.5",
                      lablText2: "PH real:",
                      circleAvatarColor: Colors.green,
                    ),
                    Caixaparan(
                      paramText: "21° - 24°",
                      lablText: "Temperatura ideal:",
                      paramText2: "22.5°",
                      lablText2: "Temperatura real:",
                      circleAvatarColor: Colors.yellow,
                    ),
                    Caixaparantime(
                      paramText: "Tempo restante:",
                      lablText: "",
                      paramText2: "",
                      lablText2: "340:49",
                    ),
                    BotaoIrParaSegundaTela(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //BotaoIrParaTerceiraTela(textoirdoc: "Documentação",),
                        //SizedBox(width: 14), // Espaçamento entre os botões
                        BotaoIrParaTerceiraTela(textoirdoc: "Sensores",),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
