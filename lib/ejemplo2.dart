import 'package:flutter/material.dart';

class EjemploDos extends StatefulWidget {
  const EjemploDos({Key? key}) : super(key: key);

  @override
  State<EjemploDos> createState() => _EjemploDosState();
}

class _EjemploDosState extends State<EjemploDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff5449b7),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
                title: const Text('Flutter Mapp'),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text('This is the Alert Dialog'),
              ),
            );
          },
        ),
      ),
    );
  }
}
