import 'package:flutter/material.dart';
import 'package:fluttercurso/pages/dashboard.dart';
import 'package:fluttercurso/pages/pagina2.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/otra': (context) => const Pagina2(),
      },
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://www.xtrafondos.com/wallpapers/vertical/colores-mezclados-en-ondas-5844.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUser(),
          campoPassword(),
          SizedBox(height: 30),
          buttonIngresar(),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text(
    "INICIAR SESION",
    style: TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget buttonIngresar() {
  return Center(
      child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Ingresar",
            style: TextStyle(fontSize: 15, color: Colors.white),
          )));
}
