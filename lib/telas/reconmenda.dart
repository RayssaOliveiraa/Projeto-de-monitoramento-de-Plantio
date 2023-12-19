import 'package:flutter/material.dart';
import 'package:telas/widgets/appbarexem.dart';
import 'package:telas/widgets/widgettraslcid.dart';
import 'package:telas/widgets/caixa_paranrec.dart';
import 'package:telas/widgets/resultcaixa.dart';

class Reconmenda extends StatefulWidget {
  const Reconmenda({Key? key}) : super(key: key);

  @override
  State<Reconmenda> createState() => _ReconmendaState();
}

class _ReconmendaState extends State<Reconmenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF87A586),
      extendBodyBehindAppBar: true,
      appBar: const AppBarexem(),
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
                      texto: "Recomendações Tomate",
                      corTexto: Colors.white,
                      corFundo: Color.fromARGB(255, 60, 85, 59),
                      tamanhoTexto: 25.0,
                      largura: 300.0,
                      altura: 65.0,
                    ),
                    Caixaparanrec(
                      paramText: "",
                      lablText: "Temperatura:",
                      paramText2: "...",
                      lablText2: "",
                    ),
                    Caixaparanrec(
                      paramText: "Umidade:",
                      lablText: "",
                      paramText2: "",
                      lablText2: "...",
                    ),
                    Caixaparanrec(
                      paramText: "PH:",
                      lablText: "",
                      paramText2: "",
                      lablText2: "...",
                    ),

                    Caixaparanresul(
                      paramText: "Resultado:",
                      lablText: "",
                      paramText2: "",
                      lablText2: "...",
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
