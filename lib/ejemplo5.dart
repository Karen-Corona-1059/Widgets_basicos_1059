import 'package:flutter/material.dart';

class EjemploCinco extends StatefulWidget {
  const EjemploCinco({Key? key}) : super(key: key);

  @override
  State<EjemploCinco> createState() => _EjemploCincoState();
}

class _EjemploCincoState extends State<EjemploCinco> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Color(0xff13bfb7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 5',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffa355cf),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Color(0xffbe0f98) : Colors.yellow;
                  _first = !_first;
                });
              },
              child: const Text(
                "Switch",
              ),
            )
          ],
        ),
      ),
    );
  }
}
