import 'package:flutter/material.dart';



class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;
  
  void responder(){       
      perguntaSelecionada++;
      print(perguntaSelecionada);
  }
    @override
    Widget build(BuildContext context){
      final perguntas = [
      'Qual a sua cor favorita?',
      'Qual o animal favorito?',
    ];
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas 2'),
            ),
            body: Column(
              children: <Widget> [
                Text(perguntas[perguntaSelecionada]),
                RaisedButton(
                  child: Text('Resposta 1'),
                  // passa uma funcao como parametro
                  onPressed: responder,
                  ), 
                  RaisedButton(
                  child: Text('Resposta 2'),
                  // passa uma funcao como parametro
                  onPressed: responder,
                  ),
              ],
            ),
        ),        
      );
  }
}      
class PerguntaApp extends StatefulWidget{ 
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}