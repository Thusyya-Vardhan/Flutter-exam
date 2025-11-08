import "package:flutter/Material.dart";

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:Text("Custom Widgets")),
      body:Center(child: Button())
    )
    );
  }
}

class Button extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return ElevatedButton(
      child:Text("Click me"),
      onPressed: (){
        print("Button pressed!!");
      },
    );
  }
}