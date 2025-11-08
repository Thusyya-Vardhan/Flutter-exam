import 'package:flutter/Material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.blue,
        textTheme:TextTheme( 
          bodyLarge:TextStyle(fontSize: 20,color:Colors.blue)
          )
      ),
      home:Homescreen()
    );
  }
}

class Homescreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

      return Scaffold(
        appBar: AppBar(title:Text("HomeScreen")),
        body:Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello World!!",style: Theme.of(context).textTheme.bodyLarge),
          ]
        )
        )
      );
  }
}