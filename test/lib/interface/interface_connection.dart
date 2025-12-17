import 'package:flutter/material.dart';
import 'package:test/widget/button_connection.dart';
import 'package:test/widget/champ_de_saisir.dart';

class InterfaceConnection extends StatefulWidget {
  const InterfaceConnection({super.key});

  @override
  State<InterfaceConnection> createState() => _InterfaceConnectionState();
}

class _InterfaceConnectionState extends State<InterfaceConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("interface de Connection")),
      body: Container(
        padding: EdgeInsets.all(15),
        color: const Color.fromARGB(255, 231, 98, 9),
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                "AppAll",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 90,
                ),
              ),
            ),

            // formulaire  de connection
            SizedBox(height: 10),
            Container(
              // padding: EdgeInsets.all(100),
              width: 350,
              height: 345,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 45),
                  ChampDeSaisir(hintText: 'Entre votre email'),
                  SizedBox(),
                  ChampDeSaisir(hintText: 'Entre votre password'),
                  SizedBox(height: 45),
                  ButtonConnection(Texte: 'Se connecter'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
