import 'package:flutter/material.dart';
import 'package:telas/widgets/Buttons.dart';
import 'package:telas/telas/MenuScreen.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF87A586),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen  ()),  ); }, icon: Image.asset("images/menu.png")),
          backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: <Widget> [
        _background(),
        ListView(
          children: <Widget> [
            BtnRedondo("Tomate"),
            BtnRedondo("Alface"),
            BtnRedondo("Coentro"),
            BtnAdicionar()
          ],
        ),
      ],
    );
  }

  _background() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/img_background.png"),
          opacity: 1,
          fit: BoxFit.fill
        )
      ),
    );
  }

  _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  const Text(
                    'PreferredSize Sample',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      size: 20,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
