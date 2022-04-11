// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerguntaApp extends StatelessWidget{
  final perguntas =[
    'Qual a sua cor favorita',
    'Qual o animal favorito',
  ];

  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            ),
            body: Column(
              children: <Widget> [
                Text(perguntas[0]),
                RaisedButton(
                  child: Text('Resposta 3'),
                  onPressed: null,
                  ),
                  

              ],
            ),
        ),
        
      );
  }
}
      