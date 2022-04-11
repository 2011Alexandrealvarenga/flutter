// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerguntaApp extends StatelessWidget{
  final perguntas =[
    'Qual a sua cor favorita',
    'Qual o animal favorito',
  ];
void responder(){
  print('Pergunda respondida1');
}
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas 2'),
            ),
            body: Column(
              children: <Widget> [
                Text(perguntas[0]),
                RaisedButton(
                  child: Text('Resposta 3'),
                  // passa uma funcao como parametro
                  onPressed: responder,
                  ),               
                  

              ],
            ),
        ),
        
      );
  }
}
      