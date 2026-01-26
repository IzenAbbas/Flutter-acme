import 'package:flutter/material.dart';
import 'package:week1_tasks/week2/week2_home_page.dart';
import 'package:week1_tasks/week3/week3_home_page.dart';
import 'week1/week1_home_page.dart';

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
      title: 'Flutter Weekly Tasks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Center(
          child: Text(
            'Flutter-Weekly-Tasks',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Week1HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2),
                  backgroundColor: Colors.cyan[50],
                ),
                child: Text('Week1-Tasks: (HTML Layout Replication)'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Week2HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2),
                  backgroundColor: Colors.cyan[50],
                ),
                child: Text('Week2-Tasks: (Sign In Pages Replication)'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Week3HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2),
                  backgroundColor: Colors.cyan[50],
                ),
                child: Text(
                  'Week3-Tasks: (1-Non Functional WA Clone, 2-To Do List)',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
