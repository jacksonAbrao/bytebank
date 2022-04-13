// ignore_for_file: prefer_const_constructors

import 'package:bytebank/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Contacts'),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Card(
            child: ListTile(
              title: Text(
                "Jackson",
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text("300", style: TextStyle(fontSize: 16)),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => ContactForm(),
                  ),
                )
                .then(
                  (newContact) => debugPrint(newContact.toString()),
                );
          },
          child: Icon(
            Icons.add,
          )),
    );
  }
}
