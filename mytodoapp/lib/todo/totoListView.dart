import 'package:flutter/material.dart';
import './toodAddView.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

// リスト一覧画面用Widget
class _TodoListPageState extends State<TodoListPage> {
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index){
          return Card(child: ListTile(
            title: Text(todoList[index]),
            trailing: IconButton(
              icon: Icon(Icons.close),
              onPressed: (){
                setState(() {
                  todoList.removeAt(index);
                });
              },
            )
          ));
        },
      ),
      appBar: AppBar(title: Text("タスク一覧")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final newTodo = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return TodoAddPage();
            })
          );
          if(newTodo != null){
            setState(() {
              todoList.add(newTodo);
            });
          }
        },
      ),
    );
  }
}