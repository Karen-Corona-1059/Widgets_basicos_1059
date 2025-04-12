import 'package:flutter/material.dart';

class EjemploTres extends StatefulWidget {
  const EjemploTres({Key? key}) : super(key: key);

  @override
  State<EjemploTres> createState() => _EjemploTresState();
}

class _EjemploTresState extends State<EjemploTres> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 3',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff83308b),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  color: Color(0xff114646),
                  child: AnimatedAlign(
                    alignment:
                        selected ? Alignment.topRight : Alignment.bottomLeft,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: const FlutterLogo(size: 50.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
