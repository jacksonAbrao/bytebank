import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final String message;

  const Progress({this.message = 'Loading', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          Text(message),
        ],
      ),
    );
  }
}
