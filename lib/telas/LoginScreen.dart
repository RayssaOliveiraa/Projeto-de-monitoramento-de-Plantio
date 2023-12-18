import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:telas/telas/tela_inicial.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF94B092),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse:true,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  TextField(
                    controller: _usernameController,
                    focusNode: _usernameFocus,
                    onTap: () {
                      clearTextFieldText(_usernameController);
                    },
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF396342),
                      hintText: 'Usuário',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: _passwordController,
                    focusNode: _passwordFocus,
                    onTap: () {
                      clearTextFieldText(_passwordController);
                    },
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF396342),
                      hintText: 'Senha',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print("Acessar");
                      }
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaInicial ()),  ); 
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF396342),
                    ),
                    child: const Text('Acessar'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print("Esqueci minha senha");
                      }
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const nome da tela()),  ); 
                    },
                    child: const Text(
                      'Esqueci minha senha',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        print("Suporte");
                      }
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const nome da tela()),  ); 
                    },
                    child: Image.asset(
                      'images/suporte.png',
                      width: 100,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void clearTextFieldText(TextEditingController controller) {
    setState(() {
      controller.text = '';
    });
  }
}