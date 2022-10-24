import 'package:asi_security/screens/components/drawer.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  static const String routeName ='/contacts';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASI Security',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ContactsPage(title: 'Contactos'),
    );
  }
}


class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key, required this.title});

  final String title;

  @override
  State<ContactsPage> createState() => _ContactsPage();
}

class _ContactsPage extends State<ContactsPage> {


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
