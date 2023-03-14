import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "About us",
          style: TextStyle(letterSpacing: 1.2, fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  name: "Asrat Adane",
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  name: "Mastewal Tesfa",
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  name: "Kidist  ",
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  name: "Betty",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String name;
  const Card({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 3,
                  offset: const Offset(0, 1.5),
                  color: Colors.indigo.withOpacity(0.5))
            ]),
        child: Expanded(
          child: Row(
            children: [LeftSide(name: name), const RightSide()],
          ),
        ));
  }
}

class RightSide extends StatelessWidget {
  const RightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: const [
            Icon(
              Icons.phone,
              color: Colors.indigoAccent,
              size: 28,
            )
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.facebook,
              color: Colors.indigoAccent,
              size: 28,
            )
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.email,
              color: Colors.indigoAccent,
              size: 28,
            )
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.telegram,
              color: Colors.indigoAccent,
              size: 28,
            )
          ],
        ),
      ],
    );
  }
}

class LeftSide extends StatelessWidget {
  const LeftSide({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.indigo,
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '${name}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
