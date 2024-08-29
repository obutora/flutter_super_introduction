import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const PokemonScreen(),
      title: 'title',
      theme: ThemeData(primarySwatch: Colors.blue),
    ),
  );
}

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png"),
            ),
            const Text(
              "リザードン",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "タイプ：ほのお / ひこう",
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }
}
