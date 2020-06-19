import 'package:flutter/material.dart';

void main() => runApp(App());


class App extends StatefulWidget{
  _AppState createState(){
    return _AppState();
  }
}

class _AppState extends State<App> {
  int counter = 0;

  increment(){
    setState(() {
      counter++;
    });
  }

  decrement(){
    setState(() {
      counter--;
    });
  }

  refresh(){
    setState(() {
      counter =0 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My counter",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("My Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("The value for Counter is:",
                style: TextStyle(fontSize: 25),),
              Text('$counter',
                style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(onPressed: decrement, child: Icon(Icons.remove),),
            SizedBox(width: 8.0,),
            FloatingActionButton(onPressed: refresh,child: Icon(Icons.refresh)),
            SizedBox(width: 8.0,),
            FloatingActionButton(onPressed: increment,child: Icon(Icons.add)),
            SizedBox(width: 8.0,),
          ],
        ),
      ),
    );
  }
}
