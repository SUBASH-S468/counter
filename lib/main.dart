import "package:flutter/material.dart";
import "package:project/counter.dart";
import "package:project/provider/counter_provider.dart";
import "package:provider/provider.dart";


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context)=>CounterProvider(), 
    child: 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(),
    ),
    );
     
  }
}