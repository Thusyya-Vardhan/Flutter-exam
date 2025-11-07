import 'package:flutter/material.dart';

void main(){

  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

   return MaterialApp(

    home:Scaffold(
      appBar:AppBar(title : Text("2b Code")),
      body:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //MainAxisAlignment : horizontal
          //CrossAxisAlignment : vertical
          children: [
            Row(
              children:[
                Container(color:Colors.red,width: 50,height: 50),
                Container(color:Colors.blue,width: 50,height: 50)
              ]
            ),
            Column(
              //MainAxisAlignment: Vertical
              //CrossAxisAlignment: Horizontal 
              children: [
                Container(color:Colors.red,width: 50,height: 50),
                Container(color:Colors.blue,width: 50,height: 50)
              ]
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.red,width: 70,height: 70),
                Container(color: Colors.blue,width: 60,height: 60),
                Container(color: Colors.green,width: 50,height: 50,child:Text("I am at the Top"))
              ],
            )
          ],
        )
      )
    )
   ); 
  }

}