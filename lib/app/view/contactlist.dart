import 'package:flutter/material.dart';
import 'package:flutterapp/app/my_app.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("FLUTTER"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.CONTACT_LIST);
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView(),
    );
  }
}
