import 'package:flutter/material.dart';
import 'package:asi_security/screens/components/drawer.dart';

class Configs extends StatelessWidget {
  const Configs({super.key});

  static const String routeName ='/configs';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASI Security',
      debugShowCheckedModeBanner: false,
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pop(context);},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
