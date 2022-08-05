import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  int c = 0;

  @override
  Widget build(BuildContext context) {
    c++;
    print(c);
                        
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(18.0),
              //   child: Image.network("https://www.miraeassetmf.co.in/images/default-source/maq/registration.png?sfvrsn=aa71ff68_0"),
              // ),
              Image.asset("assets/images/supervisor.jpeg"),
              const SizedBox(height: 30.0),
              Text("Welcome $name",
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          
                        });
                      } ,
                      decoration: const InputDecoration(
                         border: OutlineInputBorder(),
                        hintText: "Enter Username",
                        label: Text("Username"),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        label: Text("Password"),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Log In"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
