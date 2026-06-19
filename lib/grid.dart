import 'package:flutter/material.dart';

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GridHomePage());
  }
}

class GridHomePage extends StatelessWidget {
  const GridHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('GridView Sitthinan'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          final colors = [
            Colors.blueAccent,
            Colors.green,
            Colors.orange,
            Colors.purple,
            Colors.redAccent,
          ];
          final tileColor = colors[index % colors.length];

          return Container(
            decoration: BoxDecoration(
              color: tileColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
