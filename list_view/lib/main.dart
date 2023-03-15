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
        primarySwatch: Colors.cyan,
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
    var arrNames =['Piyu','Rk','Avi','Sush','Nachi','babu','Jaggu','Saurabh'];

    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Center(
        child: ListView.separated(itemBuilder: (context, index) {
          return Text(arrNames[index], style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),);
        },
        itemCount: arrNames.length,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context,index){
          return Divider(height: 100, thickness: 4,);
        },
        ),


        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   // reverse: true,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('One', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Two', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Three', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Four', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Five', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
        //     ),
        //   ],
        // ),
      )
    );
  }
}
