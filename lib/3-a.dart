import 'package:flutter/Material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text('Responsive Design')),
        body: LayoutBuilder(
          builder: (context,constraints){
            double screenwidth = constraints.maxWidth;
            double screenheight = constraints.maxHeight;

            return Center(
              child: Container(
                color:Colors.red,
                width: screenwidth*0.5,
                height: screenheight*0.5,
                child: Text("I am responsive")
              )
            );

          }
          )
      )
    );
  }
}