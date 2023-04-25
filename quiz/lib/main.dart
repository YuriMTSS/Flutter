import 'package:flutter/material.dart';
import 'package:quiz/pages/matematica.dart';
import 'package:quiz/pages/portugues.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz School',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = const Color(0xFF252c4a);
  Color secondaryColor = const Color(0xFF117eeb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Bem vindo!',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text('Escolha o conteúdo da pergunta!',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Center(
              child: SizedBox(
                child: Column(
                  children: [
                    Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width - 100,
                        decoration:
                            const BoxDecoration(color: Color(0xFFAA4A44)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const PortPage()));
                            },
                            child: const Text(
                              'Português',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ))),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width - 100,
                        decoration:
                            const BoxDecoration(color: Color(0xFF00FFFF)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const MathPage()));
                            },
                            child: const Text(
                              'Matemática',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
