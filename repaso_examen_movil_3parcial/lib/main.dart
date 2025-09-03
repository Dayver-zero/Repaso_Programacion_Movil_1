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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Examen Flutter"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        // 👈 Esto centra todo horizontal y verticalmente
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // 👈 Evita que la columna use todo el alto
          children: [
            // Imagen
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4qzw9cd4mhHlg2C0RHMI1L1Wacun_ZwBkWw&s",
                height: 300,
                fit: BoxFit.cover,
              ),
            ),

            // Texto centrado
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Dayver Ledezma Rojas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),

            SizedBox(height: 30),

            // Botón
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                textStyle: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Examen completado")));
              },
              child: Text("Finalizar"),
            ),
          ],
        ),
      ),
    );
  }
}
