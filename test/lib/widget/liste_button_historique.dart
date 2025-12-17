import 'package:flutter/material.dart';
import 'package:test/interface/detail_page.dart';

class Contenuacceuil extends StatelessWidget {
  final String Texte;
  final String Texte1;
  final String Statut;
  final String PrixGagner;
  final String Pourcentage;
  final String Gains;
  final String pourcentagegain;
  final VoidCallback? onTap;
  const Contenuacceuil({
    super.key,
    required this.Texte,
    required this.Texte1,
    required this.Statut,
    required this.PrixGagner,
    required this.Pourcentage,
    required this.Gains,
    required this.pourcentagegain,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 👇 Navigation vers une page détail
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailPage(titre: "Produit $Statut", gains: "15000"),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 160,
        // color: Colors.amber,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(121, 160, 160, 160), // Ombre
                  blurRadius: 4, // Flou de l'ombre
                  offset: Offset(1, 1), // Position de l'ombre
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Icon(
                        Icons.ac_unit_outlined,
                        color: Colors.amber[900],
                        size: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              Texte,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 34, 41, 78),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 36, 36, 35),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  Texte1,
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Text(
                          Statut,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 34, 41, 78),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            Pourcentage,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 34, 41, 78),
                            ),
                          ),
                          Text(
                            PrixGagner + "FCFA",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 34, 41, 78),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 70,
                        bottom: 20,
                        right: 10,
                      ),
                      child: Text(
                        Gains + "FCFA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: const Color.fromARGB(255, 34, 41, 78),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: 20,
                        right: 10,
                      ),
                      child: Text(
                        "+" + pourcentagegain + "%",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
