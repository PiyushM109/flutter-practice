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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Hello"),
      ),
      body: Container(
        height: 500,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("A", style: TextStyle(fontSize: 20),),
            Text("A", style: TextStyle(fontSize: 20),),
            Text("A", style: TextStyle(fontSize: 20),),
            Text("A", style: TextStyle(fontSize: 20),),
            ElevatedButton(onPressed: (){
      
            }, child: Text('Click'))
            // Row(
            //   children: [
            // Text("A"),
            // Text("A"),
            // Text("A"),
            // Text("A"),
      
            //   ],
            // )
          ],
        ),
      )
       
    );
  }
}
