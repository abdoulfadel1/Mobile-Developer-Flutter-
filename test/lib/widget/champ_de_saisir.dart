import 'package:flutter/material.dart';

class ChampDeSaisir extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  const ChampDeSaisir({super.key, required this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(15),
      child: TextField(
        style: TextStyle(
          color: Colors.white, // couleur du texte
          fontSize: 16,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black87,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(125, 255, 255, 255)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
