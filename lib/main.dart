import 'dart:math';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> listaFrases = [
    "A vida é curta, então coma o bolo primeiro!",
    "O café me dá energia, mas o chocolate me dá superpoderes.",
    "Não leve a vida tão a sério, ninguém sai vivo dela!",
    "Se você não conseguir convencê-los, confunda-os!",
    "Quando a vida te derrubar, faça um espetáculo de acrobacias!",
  ];

  var rng = Random();

  int _counter = 0;

  _gerarAleatorio(){
    setState(() {
      _counter = rng.nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do dia', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,32,8,16),
              child: Text(
                listaFrases[_counter],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              _gerarAleatorio();
            }, style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: Text("Clique aqui", style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}