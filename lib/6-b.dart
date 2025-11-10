import 'package:flutter/Material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black)
        ),
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
        appBar: AppBar(title:Text("HomeScreen"),centerTitle: true),
        body:Center(
          child:Center(
             child: Text("Hello World!!",style: Theme.of(context).textTheme.bodyLarge)
        )
        )
      );
  }
}