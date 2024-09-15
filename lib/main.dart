import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Koyo',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
        appBar: AppBar(
          title: const Text('Koyo'),
        ),
        // body is the majority of the screen.
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(25.0),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Prix de vos abonnement / mois",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "500€",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ],
                  )),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.5,
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey),
                child: const Text(
                  "Liste de vous abonnements",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.8,
                    height: MediaQuery.of(context).size.height / 5,
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey),
                    child: const Text(
                      "GeeksForGeeks",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: MediaQuery.of(context).size.height / 5,
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey),
                      child: const Column(
                        children: <Widget>[
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                          ),
                          Text(
                            "Ajouter un abonnement",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
