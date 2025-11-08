import 'package:flutter/Material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      initialRoute: '/',
      routes:{
      '/':(context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen(),
      }
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
              child:Text("Go to second page"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',
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
        body:Center( child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              child:Text("Go to Third page"),
              onPressed:(){ 
                Navigator.pushNamed(context,'/third');
                }
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child:Text("Go Back"),
              onPressed:(){
                Navigator.pop(context);
              } 
            )
          ]
        )
        )
      )
    );
  }
}

class ThirdScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text("Third Screen")),
        body:Center(
          child:ElevatedButton(
            child: Text("Go back to Second page"),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        )
      )
    );
  }
}