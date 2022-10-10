import 'package:asi_security/screens/components/drawer.dart';
import 'package:flutter/material.dart';

class Configs extends StatelessWidget {
  const Configs({super.key});

  static const String routeName ='/configs';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASI Security',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ConfigsPage(title: 'Configuración'),
    );
  }
}

class ConfigsPage extends StatefulWidget {
  const ConfigsPage({super.key, required this.title});

  final String title;

  @override
  State<ConfigsPage> createState() => _ConfigsPage();
}

class _ConfigsPage extends State<ConfigsPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.asset("lib/assets/fondos/fondoBienvenida.png"),
          ),
        ],

      )
    );
  }
}