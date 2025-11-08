import 'package:flutter/Material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{

    @override
    Widget build(BuildContext context){
      
      return MaterialApp(
        home:Scaffold(
          appBar: AppBar(title:Text("First Screen")),
          body:Center(
            child: ElevatedButton(
              child:Text("Click me for next page"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              }
            )
          )
        )
      );
    }
}

class SecondScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text("Second Screen")),
        body:Center(
          child: ElevatedButton(
            child:Text("Click me to go back"),
            onPressed: (){
              Navigator.pop(context);
            }
          )
        )
      )
    );
  }
}
