import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        shape: Border(bottom: BorderSide(width: 2)),
        title: Text(
          'Week1-Task1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 45, 42, 255),
      body: Column(
        children: [
          BuildContainerWrtScreen(
            flex: 1,
            color: Color.fromARGB(255, 60, 130, 255),
            text: '<header>',
          ),

          Expanded(
            flex: 4,
            child: Row(
              children: [
                const BuildContainerWrtScreen(
                  flex: 1,
                  color: Color.fromARGB(255, 60, 130, 255),
                  text: '<nav>',
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10.0), // Adds the gap
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 130, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '<section>',
                          style: TextStyle(color: Colors.white),
                        ),
                        const BuildContainerWrtScreen(
                          flex: 1,
                          color: Color.fromARGB(255, 221, 178, 134),
                          text: '<header>',
                        ),
                        const BuildContainerWrtScreen(
                          flex: 3,
                          color: Color.fromARGB(255, 221, 178, 134),
                          text: '<article>',
                        ),
                        const BuildContainerWrtScreen(
                          flex: 1,
                          color: Color.fromARGB(255, 221, 178, 134),
                          text: '<footer>',
                        ),
                      ],
                    ),
                  ),
                ),

                const BuildContainerWrtScreen(
                  flex: 1,
                  color: Color.fromARGB(255, 60, 130, 255),
                  text: '<aside>',
                ),
              ],
            ),
          ),

          const BuildContainerWrtScreen(
            flex: 1,
            color: Color.fromARGB(255, 60, 130, 255),
            text: '<footer>',
          ),
        ],
      ),
    );
  }
}

class BuildContainerWrtScreen extends StatelessWidget {
  final int flex;
  final Color color;
  final String text;

  const BuildContainerWrtScreen({
    super.key,
    this.flex = 1,
    required this.color,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: double.infinity, // Fills available width
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
