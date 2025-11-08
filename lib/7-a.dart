import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home:Scaffold(
          appBar:AppBar(title:Text("Form")),
          body: Center(
            child:Container(
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)
              ),
              child: SimpleForm(),
            )
        )
        )
      );
    }
}

class SimpleForm extends StatefulWidget{
  @override
  State<SimpleForm> createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm>{

    @override
    Widget build(BuildContext context){

      return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "Name:"),
          ),
          //SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "Email:"),
          ),
          //SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "Mobile No:"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Submit"),
            onPressed: (){
              print("Form Submitted successfully");
            },
          )
        ],
      )
      );
    }
}