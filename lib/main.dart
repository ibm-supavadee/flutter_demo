import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              width: 2,
            ),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://thumbs.dreamstime.com/b/cartoon-little-star-vector-illustration-design-element-43670778.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          margin: EdgeInsets.only(left: 30),
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Pung",
            style: TextStyle(color: Colors.blue, fontSize: 150),
          ),
        ),
      ),
    );
  }
}
