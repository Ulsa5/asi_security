import 'package:asi_security/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
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
              leading: Icon(Icons.home),
              title: Text('Inicio'),
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_cal),
              title: Text('Contactos'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Historial'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Opciones'),
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'ASI Security App',
              applicationVersion: '1.0.1',
              applicationLegalese: 'Corporación A.S.I. - 2022©',
              child: Text('Acerca de'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Cerrar Sesión'),
            ),
          ],
        ),
      );
  }
}


