import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("タスク追加")),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_text),
            SizedBox(height: 8),
            TextField(
              onChanged: (String value) {
                setState(() {
                  _text = value;                
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '名前',
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 30,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop(_text);
                },
                child: Text("リスト追加")
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text("キャンセル", style: TextStyle(color: Colors.black))
              ),
            )
          ]
        ),
      )
    );
  }
}
