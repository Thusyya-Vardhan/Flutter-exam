import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Form Validation Example")),
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
  final _formKey = GlobalKey<FormState>(); // key for validation
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // connect form key
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Name Field
          Container(
            width: 300,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Name",
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your name";
                }
                return null; // valid
              },
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
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your email";
                }
                if (!value.contains("@")) {
                  return "Enter a valid email";
                }
                return null; // valid
              },
            ),
          ),
          SizedBox(height: 20),

          // Submit Button
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // All inputs valid
                print("Name: ${_nameController.text}");
                print("Email: ${_emailController.text}");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Form submitted successfully!")),
                );
              }
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
