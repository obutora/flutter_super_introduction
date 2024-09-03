import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const PokemonListScreen(),
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
      body: Column(
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
    );
  }
}

class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonList = [
      const PokemonListCard(
        name: "ヒトカゲ",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
      ),
      const PokemonListCard(
        name: "リザード",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
      ),
      const PokemonListCard(
        name: "リザードン",
        type: "タイプ：ほのお / ひこう",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
      ),
      const PokemonListCard(
        name: "ヒトカゲ",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
      ),
      const PokemonListCard(
        name: "リザード",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
      ),
      const PokemonListCard(
        name: "リザードン",
        type: "タイプ：ほのお / ひこう",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
      ),
      const PokemonListCard(
        name: "ヒトカゲ",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
      ),
      const PokemonListCard(
        name: "リザード",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
      ),
      const PokemonListCard(
        name: "リザードン",
        type: "タイプ：ほのお / ひこう",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
      ),
      const PokemonListCard(
        name: "ヒトカゲ",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
      ),
      const PokemonListCard(
        name: "リザード",
        type: "タイプ：ほのお",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
      ),
      const PokemonListCard(
        name: "リザードン",
        type: "タイプ：ほのお / ひこう",
        imgUrl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            return pokemonList[index];
          },
        ),
      ),
    );
  }
}

class PokemonListCard extends StatelessWidget {
  const PokemonListCard({
    super.key,
    required this.name,
    required this.imgUrl,
    required this.type,
  });

  final String name;
  final String imgUrl;
  final String type;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(imgUrl),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
        ),
      ),
      subtitle: Text(
        type,
        style: const TextStyle(color: Colors.black45),
      ),
    );
  }
}
