import 'package:flutter/Material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Media Query + Breakpoint")),
        body: Center(
          child:ResponsiveLayout()
      )
    )
    );
  }
}

class ResponsiveLayout extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    double screenwidth = MediaQuery.of(context).size.width;

  //Breakpoints:
    if(screenwidth<600){
      return Container(color:Colors.red,child:Text("I am a phone"));
    } else if(screenwidth<1200) {
      return Container(color:Colors.blue,child:Text("I am a tablet"));
    } else {
      return Container(color:Colors.green,child:Text("I am a Desktop"));
    }

  }
}