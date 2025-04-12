import 'package:flutter/material.dart';

class EjemploCuatro extends StatefulWidget {
  const EjemploCuatro({Key? key}) : super(key: key);

  @override
  State<EjemploCuatro> createState() => _EjemploCuatroState();
}

class _EjemploCuatroState extends State<EjemploCuatro> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 4',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff55a2cf),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200.0 : 100.0,
                  height: selected ? 100.0 : 200.0,
                  color: selected ? Color(0xff377479) : Color(0xff6da5ca),
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 75),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
