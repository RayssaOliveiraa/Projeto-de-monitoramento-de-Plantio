import 'package:flutter/material.dart';
import 'package:telas/widgets/appbar.dart';

class AddCultura extends StatelessWidget {
  

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
          ]
      )
    );
  }
}