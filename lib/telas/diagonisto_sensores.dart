import 'package:flutter/material.dart';

class DiagonisticoSensores extends StatefulWidget {
  const DiagonisticoSensores({super.key});

  @override
  State<DiagonisticoSensores> createState() => _DiagonisticoSensoresState();
}

class _DiagonisticoSensoresState extends State<DiagonisticoSensores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF87A586),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () {  }, icon: Image.asset("images/menu.png")),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _body(),
    );
  }

  _statusSensor(String nomeSensor, Color corSensor)
  {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF597B60),
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            Text(nomeSensor, style: TextStyle(fontSize: 18, color: Colors.white),),
            Expanded(child: SizedBox()),
            CircleAvatar(backgroundColor: corSensor, radius: 15),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
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

  _body() {
    return Stack(
      children: [
        _background(),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 290,
                        height: 640,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xFF396342)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text("Situação", style: TextStyle(fontSize: 30, color: Colors.white)),
                          SizedBox(height: 10),
                          _statusSensor("Sensor A", Colors.red),
                          _statusSensor("Sensor B", Colors.green),
                          _statusSensor("Sensor C", Colors.red),
                          _statusSensor("Sensor D", Colors.yellow),
                          _statusSensor("Sensor E", Colors.green),
                        ],
                      ),

                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
