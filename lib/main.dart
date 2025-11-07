import 'package:flutter/material.dart';
// 2.a question
void main(){
    
    runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home:Scaffold(
        appBar : AppBar(title:Text("Hello World")),
        body : Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello world"),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
              // if want a image from local system . use Image.assest() . initially, move the image in project folder
              Container(
                color: Colors.blue,
                child : Text("I am a container")
              )
            ]
          )
        )
      )
    );
  }
}