import 'package:flutter/material.dart';


// statelesswidget - nao tem ação
class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Hello world´s"),
            ) 
          ),
          body: Center(
            child: Text("Ola mundo!")
            ),
      )
    );
  }
}
