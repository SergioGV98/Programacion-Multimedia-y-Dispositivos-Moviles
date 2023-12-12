// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 14,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey, Colors.black87],
                      transform: GradientRotation(pi / 2))),
              child: SafeArea(child: Header()),
            )),
        Expanded(flex: 3, child: SubscriptionArea()),
        Expanded(flex: 16, child: BottomDescriptionArea()),
      ]),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(flex: 3, child: HeaderButtons()),
              Expanded(flex: 14, child: PodcastArea()),
              Expanded(flex: 5, child: SocialButtons())
            ],
          ),
        ))
      ],
    );
  }
}

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.close, color: Colors.white),
        Icon(Icons.share, color: Colors.white)
      ],
    );
  }
}

class PodcastArea extends StatelessWidget {
  const PodcastArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAlias,
            width: 150,
            height: 150,
            child: Image.asset("images/podcast-cover.png")),
        Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: PodcastInfo()))
      ],
    );
  }
}

class PodcastInfo extends StatelessWidget {
  const PodcastInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> iconText(IconData icon, String text) => [
          Icon(icon, color: Colors.white, size: 16),
          SizedBox(width: 5),
          Text(text, style: TextStyle(color: Colors.white))
        ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Episodio 111 - ¿Javascript o ke ase?",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...iconText(Icons.calendar_today, "8 months ago"),
            SizedBox(width: 10),
            ...iconText(Icons.volume_up, "4350")
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [...iconText(Icons.timer_outlined, "57:08")],
        ),
        SizedBox(height: 15),
        Row(
          children: [...iconText(Icons.label_outline, "Internet y tecnología")],
        )
      ],
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
              child: Row(children: [
                Icon(Icons.favorite_outline, color: Colors.white),
                Container(width: 5),
                Text("12", style: TextStyle(color: Colors.white))
              ]),
            ),
            Expanded(child: Icon(Icons.comment_outlined, color: Colors.white)),
            Expanded(child: Icon(Icons.add, color: Colors.white)),
            Expanded(child: Icon(Icons.download_rounded, color: Colors.white)),
            Expanded(child: Container())
          ]),
        ),
        Flexible(
            flex: 1,
            child: SizedBox(
              width: 60,
              height: 60,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.play_arrow)),
            ))
      ],
    );
  }
}

class SubscriptionArea extends StatelessWidget {
  const SubscriptionArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.8, color: Colors.grey))),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(5)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset("images/podcast-cover.png")),
                SizedBox(width: 10),
                Expanded(
                    child: Text(
                  "Programar es una mierda",
                  style: TextStyle(fontSize: 16),
                ))
              ],
            ),
          )),
          SizedBox(
              width: 150,
              child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bookmark_added_outlined,
                          color: Colors.black54),
                      SizedBox(width: 5),
                      Text("SUBSCRIBED",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                    ],
                  )))
        ],
      ),
    );
  }
}

class BottomDescriptionArea extends StatelessWidget {
  const BottomDescriptionArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "Episode description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Text.rich(TextSpan(
                        text:
                            "Hoy estamos con Carlos Azaustre repasando el estado del arte de javascript, "
                            "viendo qué le gusta y por qué se enganchó.\n\nPresentan: Juanjo Meroño y Àlex "
                            "Ballesté\nMúsica: ",
                        style: TextStyle(fontSize: 15),
                        children: [
                      TextSpan(
                          text: "www.dilo.org",
                          style: TextStyle(color: Colors.orange))
                    ])))
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Episode podmarks",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.signal_cellular_alt),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("There are no podmarks in this episode"),
                        Text(
                          "More information",
                          style: TextStyle(color: Colors.orange),
                        )
                      ]),
                )
              ],
            )
          ],
        ));
  }
}
