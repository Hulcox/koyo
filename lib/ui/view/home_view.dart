import 'package:flutter/material.dart';
import 'package:koyo/context/navigation_context.dart';
import 'package:koyo/main.dart';
import 'package:provider/provider.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ZoomTapAnimation(
                child: Container(
                    padding: const EdgeInsets.all(25.0),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: colorBox),
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
                    ))),
            ZoomTapAnimation(
                onTap: () {
                  Provider.of<NavigationContext>(context, listen: false)
                      .setSelectedIndex(3);
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5,
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), color: colorBox),
                  child: const Text(
                    "Liste de vos abonnements",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ZoomTapAnimation(
                  onTap: () {
                    Provider.of<NavigationContext>(context, listen: false)
                        .setSelectedIndex(1);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    height: MediaQuery.of(context).size.height / 6,
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: colorBox),
                    child: const Text(
                      "Prochain prélèvement",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                ZoomTapAnimation(
                    onTap: () {
                      Provider.of<NavigationContext>(context, listen: false)
                          .setSelectedIndex(2);
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.height / 6,
                        padding: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colorBox),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Ajouter un abonnement",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ))),
              ],
            )
          ],
        ));
  }
}
