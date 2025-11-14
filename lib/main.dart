import 'package:flutter/material.dart';
import 'pages/separate_list_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts',
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'Raleway'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Fonts')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Rismanita!",
              style: TextStyle(
                fontFamily: "roboto",
                fontStyle: FontStyle.italic,
                fontSize: 22,
              ),
            ),

            SizedBox(height: 8), // jarak antar teks

            Text(
              "Ini aku gi latihan pake font style yuhuuuuu",
              style: TextStyle(
                fontFamily: "dancing", 
                fontWeight: FontWeight.w900
              ),
            ),

        
            const SizedBox(height: 30),
            // TOMBOL KE LIST VIEW
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SeparateListView(),
                  ),
                );
              },
              child: const Text("Pergi ke List View"),
            )
          ],
        ),
      ),
    );
  }
}
