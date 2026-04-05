import 'package:flutter/material.dart';
import 'package:project/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterProvider>().counter;
    return Scaffold(
      appBar: AppBar(title: Text('counter example'),),
      body: Center(
        child: Text('count value is $count',style: TextStyle(fontSize: 25)),
      ),
      
      
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            context.read<CounterProvider>().increment();
          },child: Icon(Icons.plus_one),),
          SizedBox(height: 10,),
          
         Expanded(child: 
         ListView.builder(itemBuilder: (context,index){
            return ListTile(
              title: Text(' $index'),
              trailing: IconButton(onPressed: (){
                context.read<CounterProvider>().reset();
              }, icon: Icon(Icons.refresh)),
            );
          },itemCount:5,shrinkWrap: true,)),
         
  
            
            
          
        ],
      )

    );
    
  }
}