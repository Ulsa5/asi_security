import 'package:asi_security/screens/configs.dart';
import 'package:asi_security/screens/contacts.dart';
import 'package:asi_security/screens/historial.dart';
import 'package:asi_security/screens/home.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              image: DecorationImage(
                image: AssetImage("lib/assets/fondos/fondoBienvenida.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(""),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Home())
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.perm_contact_cal),
            title: const Text('Contactos'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Contacts())
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Historial'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const History())
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Opciones'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Configs())
              );
            },
          ),
          const AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: Icon(Icons.local_play),
            applicationName: 'ASI Security App',
            applicationVersion: '1.0.1',
            applicationLegalese: 'Corporación A.S.I. - 2022©',
            child: Text('Acerca de'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesión'),
            onTap: (){
              //SystemChannels.platform.invokeMapMethod('SystemNavigator.pop');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

//void _onTap()