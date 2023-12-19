import 'package:flutter/material.dart';
import 'package:telas/telas/exempl.dart';

// ignore: must_be_immutable
class BtnRedondo extends StatelessWidget {

  late String nomeBotao;
  BtnRedondo(this.nomeBotao);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 45, right: 45, top: 20),
        height: 90,
        child: ElevatedButton(
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ExemploCultura()));},
          child: Center(
            child: Text(
              this.nomeBotao,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(57, 99, 66, 1),
          side: BorderSide(width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        ),
    )
    );
  }
}

class BtnAdicionar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 45, right: 45, top: 20),
        height: 90,
        child: ElevatedButton(
        onPressed: () {  },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              child: Image.asset("images/add.png"),
            ),
            SizedBox(
              width: 8,
            ),
            Text("Adicionar Cultura",
            style: TextStyle(
              fontSize: 20
            ),),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(57, 99, 66, 1),
          side: BorderSide(width: 2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

