import 'Tarefa.dart';

class TodoListApp extends StatelessWidget{
  @override
  Widget bluid(BuildContext Context){
    return new MaterialApp(
      title: 'TodoList App',
      home: new ListaScreen()
    );
  }
}
class ListaScreen extends StatelessWidget{
  @override
  State<StatelessWidget> createState(){
    return new ListaScreenState();
  }
}
// statelesswidget - nao tem ação
class ListaTarefasApps extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new ListaScreenState()
      );
  }
}
class ListaScreenState extends State<ListaScreen>{
  List<Tarefa> tarefas = new List<Tarefa>();
  
  void adicionaTarefa(String nome){
    tarefas.add(Tarefa(nome));
  }
  // metodo para retornar a class
  Widget getItem(Tarefa tarefa){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: new Icon(Icons.check_box, color: Colors.green,),
          iconSize: 42.8,
          onPressed: (){}, 
          ),
          Column(
            // alinhamento
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [

            Text(tarefa.nome, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
            // Text(tarefa.data.toIso8601String())
          ],
          )
      ],               
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("lista de tarefas 52")                
        ),
        body: Column(
          // alinhamento vertical
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0.0),
                child:TextField(
                  // recebe uma função que nao tem retorno do tipo string
                  onSubmitted: (value){
                    adicionaTarefa(value);
                  },
                ),
              ),
            // expande de acordo com a resolução
            Expanded(
              child:ListView.builder(
                itemCount: tarefas.length,
                itemBuilder: (_, indice){
                  return getItem(tarefas[indice]);
                },
              ),
              
            )
          ],
        )
      );
  }

}

  
