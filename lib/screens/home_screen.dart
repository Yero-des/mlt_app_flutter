import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Titulo de la app",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 10,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Text("Click para cambiar los datos del contador", style: TextStyle(
                color: Colors.white, // Cambia el color
                fontSize: 15, // Tamaño de fuente opcional
                fontWeight: FontWeight.bold, // Peso de fuente opcional
              ),
            ), 
            Text("20", style: TextStyle(
                color: Colors.white, // Cambia el color
                fontSize: 30, // Tamaño de fuente opcional
                fontWeight: FontWeight.bold, // Peso de fuente opcional
              ),
            ),
          ],
        ),
      )
    );
  }

}