import 'package:flutter/material.dart';
import 'package:project/provider/counter_provider.dart';
import 'package:provider/provider.dart';


class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(title: Text(" Counter Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            SizedBox(height: 40),

            
            Text(
              "${count.counter}",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().increment();
                  },
                  child: Text("+1", style: TextStyle(fontSize: 25)),
                ),

                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().reset();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                  child: Text("0", style: TextStyle(fontSize: 25,color: Colors.white)),
                ),
              ],
            ),

            SizedBox(height: 40),

            
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Last 5 Values:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10),

            
            Expanded(
              child: ListView.builder(
                itemCount: count.values.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.history),
                    title: Text("Count: ${count.values[index]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}