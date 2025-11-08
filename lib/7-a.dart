import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Container Form Example")),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SimpleForm(),
          ),
        ),
      ),
    );
  }
}

class SimpleForm extends StatefulWidget {
  @override
  State<SimpleForm> createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Name Field
        Container(
          width: 300, // fixed width
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: "Name",
              border: InputBorder.none, // remove default border
            ),
          ),
        ),
        SizedBox(height: 15),

        // Email Field
        Container(
          width: 300,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20),

        // Submit Button
        ElevatedButton(
          onPressed: () {
            print("Name: ${_nameController.text}");
            print("Email: ${_emailController.text}");
          },
          child: Text("Submit"),
        ),
      ],
    );
  }
}
