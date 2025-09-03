import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExamenFlutter(),
    );
  }
}

class ExamenFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Examen Flutter"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Imagen en la parte superior
          Container(
            margin: EdgeInsets.all(20),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4qzw9cd4mhHlg2C0RHMI1L1Wacun_ZwBkWw&s",
              height: 40,
            ),
          ),

          // Texto centrado con el nombre
          Center(
            child: Text(
              "JOEL ARNEZ VOCAL",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 20),

          // Botón que muestra un SnackBar
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Examen completado")));
            },
            child: Text("Finalizar"),
          ),
        ],
      ),
    );
  }
}
