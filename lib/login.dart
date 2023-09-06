import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.4, // Altura de la sección superior
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 128, 221, 241), // Color de la sección superior
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                    20), // Esquina inferior izquierda redondeada
                bottomRight:
                    Radius.circular(20), // Esquina inferior derecha redondeada
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.5,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/user_icon.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.5, // Altura de la sección inferior
            color: Colors.white, // Color de la sección inferior
            child: Column(
              children: [
                SizedBox(height: 10),
                TextField(
                  controller: user,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 198, 235, 243),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "User",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: email,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 198, 235, 243),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Email",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 198, 235, 243),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Password",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
