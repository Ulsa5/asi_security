import 'package:flutter/material.dart';
import 'package:asi_security/screens/components/drawer.dart';

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
      drawer: const DrawerComponent(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: const [
          Fondo(),
          Contenido()
        ],
      ),
    );
  }
}

class Contenido extends StatefulWidget{
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido>{
  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Ingresa tus datos para continuar',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Datos(),
        ],
      ),

    );
  }
}

class Fondo extends StatelessWidget{
  const Fondo({super.key});

  @override
  Widget build (BuildContext context){
    return Container(

    );
  }
}

class Datos extends StatefulWidget{
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos>{

  bool obs = true;

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(''),
          const SizedBox(),
          TextFormField(),
          const SizedBox(),
          const Text(''),
          const SizedBox(),
          TextFormField(),
          const Remember(),
          const SizedBox(),
          const Botones(),
        ],
      ),
    );
  }
}

class Remember extends StatefulWidget{
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember>{
  @override
  Widget build (BuildContext context){
    return Container(

    );
  }
}

class Botones extends StatelessWidget{
  const Botones({super.key});

  @override
  Widget build (BuildContext context){
    return Container(

    );
  }
}