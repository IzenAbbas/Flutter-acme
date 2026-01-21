import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        shape: Border(bottom: BorderSide(width: 2)),
        title: Text(
          'Week1-Task2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: BoxBorder.all(color: Colors.black, width: 5),
        ),
        child: Column(
          children: [
            MyWidget(color: Color.fromARGB(255, 255, 49, 49), text: '<header>'),
            MyWidget(color: Color.fromARGB(255, 12, 192, 223), text: '<nav>'),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        MyWidget(
                          flex: 1,
                          color: Color.fromARGB(255, 255, 189, 89),
                          text: '<section>',
                        ),
                        MyWidget(
                          flex: 1,
                          color: Color.fromARGB(255, 255, 145, 77),
                          text: '<article>',
                        ),
                      ],
                    ),
                  ),
                  MyWidget(
                    flex: 1,
                    color: Color.fromARGB(255, 255, 102, 196),
                    text: '<aside>',
                  ),
                ],
              ),
            ),
            MyWidget(
              color: Color.fromARGB(255, 115, 115, 115),
              text: '<footer>',
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final int flex;
  final Color color;
  final String text;
  const MyWidget({
    super.key,
    this.flex = 1,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsetsGeometry.all(15),
        decoration: BoxDecoration(
          color: color,
          border: BoxBorder.all(color: Colors.black, width: 5),
        ),
        width: double.infinity,
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
