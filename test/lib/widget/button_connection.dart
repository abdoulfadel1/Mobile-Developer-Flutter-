import 'package:flutter/material.dart';
import 'package:test/interface/page_transaction.dart';

class ButtonConnection extends StatefulWidget {
  final String Texte;
  const ButtonConnection({super.key, required this.Texte});

  @override
  State<ButtonConnection> createState() => _ButtonConnectionState();
}

class _ButtonConnectionState extends State<ButtonConnection> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 231, 98, 9),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageTransaction()),
        );
      },
      child: Text(widget.Texte, style: TextStyle(color: Colors.white)),
    );
  }
}
