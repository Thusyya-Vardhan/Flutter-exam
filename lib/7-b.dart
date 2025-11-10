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

    final _formkey = GlobalKey<FormState>();
    final _name = TextEditingController();
    final _email =TextEditingController();
    final _mobileNo = TextEditingController();

    @override
    Widget build(BuildContext context){

      return Form(
      key: _formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _name,
            decoration: InputDecoration(labelText: "Name:"), 
            validator : (v) {
              if(v==null || v.isEmpty ){
                return "Please enter name";
              } else {return null;}
            } ,
          ),
          //SizedBox(height: 10),
          TextFormField(
            controller: _email,
            decoration: InputDecoration(labelText: "Email:"),
            validator: (v){
              if(v==null || v.isEmpty){
                return "Please enter email";
              }else if(!v.contains('@')){
                return "Please enter valid email";
              } else{
                return null;
              }
            },
          ),
          //SizedBox(height: 10),
          TextFormField(
            controller: _mobileNo,
            decoration: InputDecoration(labelText: "Mobile No:"),
            validator: (v){
              if(v==null || v.isEmpty){
              return "Please enter mobile no";
              } else if(v.length!=10){
                return "Please enter valid mobile no";
              }else{
                return null;
              }
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Submit"),
            onPressed: (){
             print("Form submitted");
            },
          )
        ],
      )
      );
    }
}
