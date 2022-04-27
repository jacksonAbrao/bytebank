import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  const TransactionAuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('Authenticate')),
      content: const TextField(
        obscureText: true,
        maxLength: 4,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        style: TextStyle(
          fontSize: 56,
          letterSpacing: 32,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            print('cancel');
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            print('confirm');
          },
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}
