import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';

class ChDetailScreen extends StatelessWidget {
  const ChDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bhagavad Gita"),

      ),
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(),
      ),
    );
  }
}
