
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 5,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/icon/Logo/logo/Triangulito.png"),
              ),
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
      decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/fondos/fondoPrincipal.png"),
            ),
          ),
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
        //color: Colors.white,
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 20),
              isDense: true,
              hintText: "Saúl",
              hintStyle: const TextStyle(color: Colors.white),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset("lib/assets/icon/password/ic_launcher-61d8883c5bd85/android/mipmap-hdpi/ic_launcher_foreground.png")
              )
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius:  BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white, width: 0.0),
              ),
              border: const OutlineInputBorder(),
              labelStyle: const TextStyle(color: Colors.white),
              hintText: 'Correo electrónico',
              hintStyle: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white, width: 0.0),
              ),
              hintText: 'Contraseña',
              hintStyle: const TextStyle(color: Colors.white),
              suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye_outlined),
                  color: Colors.white,
                  onPressed:(){
                    setState(() {
                      obs == true ? obs = true : obs =false;
                    });
                  },
              ),
            ),
          ),
          const Remember(),
          const SizedBox(
            height: 30,
          ),
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
  bool valor = false;

  @override
  Widget build (BuildContext context){
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child : const Text('¿Olvidaste la contraseña?'),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Mantener sesión iniciada',
          style: TextStyle(
              color: Colors.white),
        ),
        BuildSwitch(),
        const SizedBox(
          height: 15,
        ),

        /*Checkbox(
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.all(Colors.white),
          value: valor,
          onChanged: (value) {
          setState(() {
            valor == false ? valor = true : valor = false;
          });
          },
        ),*/


        const Spacer(),

      ],
    );
  }
  Widget BuildSwitch()=>Transform.scale(
    scale: 1,
    child: Switch(
      value: valor,
      onChanged: (valor) => setState(() => this.valor=valor)
    ),
  );
}


class Botones extends StatelessWidget{
  const Botones({super.key});

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Colors.white),
                )
              ),
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF01092A)),
            ),
            child: const Text(
              'INGRESAR',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 35,
          width: double.infinity,
        ),
        const Text(
          'Registrarse',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}