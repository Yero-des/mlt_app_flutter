import 'package:flutter/material.dart';

// Declarar variables
TextStyle customFontWeight ({ double fontSize = 15 }) {
  return TextStyle(
    color: Colors.white, //
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
  );
}

void main() => runApp(const HomeScreen());

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int contador = 0;

  void zeroCounter() {
    setState(() {
      contador = 0;
    });
  }

  void incrementCounter() {
    setState(() {
      contador++;
    });
  }

  void decrementCounter() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Bar 
      appBar: AppBar(
        title: const Text(
          "AddPress",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 10,
      ), 

      // Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content
          crossAxisAlignment: CrossAxisAlignment.center, // Center items
          children: <Widget> [
            Text("Click para cambiar los datos del contador", style: customFontWeight( fontSize: 15 )), 
            const SizedBox(height: 30),
            Text('$contador', style: customFontWeight(fontSize: 30)),
          ],
        ),
      ),

      floatingActionButton: Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [

          FloatingActionButton(
            onPressed: () {
              zeroCounter();
            },
            child: const Icon(Icons.repeat_rounded),
          ),

          const SizedBox(width: 20),

          FloatingActionButton(
            onPressed: () {
              decrementCounter();
            },
            child: const Icon(Icons.exposure_minus_1),
          ),

          const SizedBox(width: 20),

          FloatingActionButton(
            onPressed: () { 
              incrementCounter();
            },
            child: const Icon(Icons.plus_one),
          ),

        ]
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // Brackground
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),

    );
  }
}