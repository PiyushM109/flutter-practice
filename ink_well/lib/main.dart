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
        primarySwatch: Colors.blueGrey,
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
        
        title: const Text("Ink_Well"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print('Tap Once');
          },
          onDoubleTap: (){
            print('Double tap');
          },
          onLongPress: (){
            print('Long Pressed');
          },
          
          child: Container(
           width: 400,
           height: 400,
           color: Colors.yellowAccent,
           child: Center(
             child: InkWell(
              onTap: (){
                print('Click Here tapped');
              },
               child: Text('Click Here',
               style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
             ),
           ),
          
          ),
        ),
      )
       
    );
  }
}
