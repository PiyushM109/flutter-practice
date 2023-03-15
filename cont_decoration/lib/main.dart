import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue,
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
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Container Decoration',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300,),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color : Colors.blue.shade500,
              // borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 2,
                color: Colors.red,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.grey,
                  spreadRadius: 7,
                ),
              ],
              shape: BoxShape.circle,

            ),
          ),
        ),
      )
    );
  }
}
