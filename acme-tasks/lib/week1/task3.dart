import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        shape: Border(bottom: BorderSide(width: 2)),
        title: Text(
          'Week1-Task3',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 253, 175, 177),
        child: Column(
          children: [
            MyWidget(color: Color.fromARGB(255, 151, 208, 198), text: 'Header', flex: 3,),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  MyWidget(
                    color: Color.fromARGB(255, 98, 183, 182),
                    text: 'Aside',
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsetsGeometry.all(20),
                      color: Color.fromARGB(255, 250, 122, 123),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyWidget(
                            color: Color.fromARGB(255, 250, 122, 123),
                            text: '',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'Article',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                MyWidget(
                                  color: Color.fromARGB(255, 213, 212, 212),
                                  text: 'Image',
                                  margin: EdgeInsetsGeometry.all(10),
                                ),
                                MyWidget(
                                  color: Color.fromARGB(255, 213, 212, 212),
                                  text: 'Image',
                                  margin: EdgeInsetsGeometry.all(10),
                                ),
                                MyWidget(
                                  color: Color.fromARGB(255, 213, 212, 212),
                                  text: 'Image',
                                  margin: EdgeInsetsGeometry.all(10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MyWidget(color: Color.fromARGB(255, 151, 208, 198), text: 'Footer', flex: 3,)
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final Color color;
  final String text;
  final int flex;
  final EdgeInsetsGeometry margin;
  const MyWidget({
    super.key,
    required this.color,
    required this.text,
    this.flex = 1,
    this.margin = const EdgeInsets.all(20),
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: margin,
        width: double.infinity,
        color: color,
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
