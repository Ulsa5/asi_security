import 'package:flutter/material.dart';
import 'package:asi_security/screens/components/drawer2.dart';

class History extends StatelessWidget {
  const History({super.key});

  static const String routeName ='/history';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASI Security',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HistoryPage(title: 'Historial'),
    );
  }
}


class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key, required this.title});

  final String title;

  @override
  State<HistoryPage> createState() => _HistoryPage();
}

class _HistoryPage extends State<HistoryPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent2(),
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
