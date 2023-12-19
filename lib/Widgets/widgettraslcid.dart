import 'package:flutter/material.dart';

class WidgetTranslucidoTexto extends StatelessWidget {
  final String texto;
  final Color corTexto;
  final double tamanhoTexto;
  final Color corFundo;
  final double largura;
  final double altura;

  const WidgetTranslucidoTexto({
    Key? key,
    required this.texto,
    required this.corTexto,
    required this.tamanhoTexto,
    required this.corFundo,
    required this.largura,
    required this.altura,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 20),
      decoration: BoxDecoration(
        color: corFundo.withOpacity(0.27),
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center, // Ajusta o alinhamento do texto
      child: Text(
        texto,
        style: TextStyle(
          color: corTexto,
          fontSize: tamanhoTexto,
        ),
      ),
    );
  }
}
