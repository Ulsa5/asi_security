
import 'package:asi_security/screens/login.dart';
import 'package:flutter/material.dart';


/*
void main() {
  //runApp(const MyApp());
  runApp(LoginPage());
}
*/

void main()=>runApp(const AsiSecurity());

class AsiSecurity extends StatelessWidget {
  const AsiSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ASI Security',
      debugShowCheckedModeBanner: false,
      home: LoginPage(title: 'ASI Security'),
    );
  }
}

