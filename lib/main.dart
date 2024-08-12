import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Captura o tema que está aplicado na aplicação
    //Só podemos consultar, não podemos alterá-lo
    //Ao mneos, não podemos alterá-lo aqui
    final tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("2H3"),
            Text("Duda"),
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "aula01",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());

