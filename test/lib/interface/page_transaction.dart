import 'package:flutter/material.dart';
import 'package:test/widget/liste_button_historique.dart';

class PageTransaction extends StatefulWidget {
  PageTransaction({super.key});

  @override
  State<PageTransaction> createState() => _PageTransactionState();
}

class _PageTransactionState extends State<PageTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: 200,
            width: double.infinity,
            color: const Color.fromARGB(255, 231, 98, 9),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Solde",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Center(
                  child: Text(
                    "15000000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 60,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(children: [Text("liste de transaction")]),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text("liste de transaction"),
                Spacer(),
                Icon(Icons.currency_exchange),
              ],
            ),
          ),

          Column(
            children: [
              SizedBox(
                height: 500, // zone scrollable
                child: ListView(
                  // scrollDirection: Axis.vertical,
                  children: [
                    Contenuacceuil(
                      Texte: 'air',
                      Texte1: '03%',
                      Statut: 'en cours',
                      PrixGagner: '150000',
                      Pourcentage: '15%',
                      Gains: '50000',
                      pourcentagegain: '025.5',
                    ),
                    Contenuacceuil(
                      Texte: 'air',
                      Texte1: '03%',
                      Statut: 'en cours',
                      PrixGagner: '150000',
                      Pourcentage: '15%',
                      Gains: '50000',
                      pourcentagegain: '025.5',
                    ),
                    Contenuacceuil(
                      Texte: 'air liquide CI',
                      Texte1: '100%',
                      Statut: 'en cours',
                      PrixGagner: '150000',
                      Pourcentage: '15%',
                      Gains: '50000',
                      pourcentagegain: '025.5',
                    ),
                    Contenuacceuil(
                      Texte: 'air liquide CI',
                      Texte1: '100%',
                      Statut: 'en cours',
                      PrixGagner: '150000',
                      Pourcentage: '15%',
                      Gains: '50000',
                      pourcentagegain: '025.5',
                    ),
                    Contenuacceuil(
                      Texte: 'air liquide CI',
                      Texte1: '100%',
                      Statut: 'en cours',
                      PrixGagner: '150000',
                      Pourcentage: '15%',
                      Gains: '50000',
                      pourcentagegain: '025.5',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
