import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        shape: Border(bottom: BorderSide(width: 2)),
        title: Text(
          'Week1-Task4',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                MyWidget(
                  color: Colors.black,
                  text: '',
                  textColor: Colors.black,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        MyWidget(
                          text: '<header>',
                          textColor: Color.fromARGB(255, 204, 123, 96),
                          color: Color.fromARGB(255, 65, 42, 30),
                        ),
                        Expanded(
                          flex: 7,
                          child: Row(
                            children: [
                              MyWidget(
                                text: '<nav>',
                                textColor: Color.fromARGB(255, 31, 135, 38),
                                color: Color.fromARGB(255, 17, 56, 54),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsetsGeometry.all(15),
                                  color: Color.fromARGB(255, 65, 42, 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '<main>',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              204,
                                              123,
                                              96,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          margin: EdgeInsetsGeometry.all(15),
                                          color: Color.fromARGB(
                                            255,
                                            80,
                                            132,
                                            162,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: Text(
                                                  '<article>',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                      255,
                                                      238,
                                                      242,
                                                      245,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MyWidget(
                                                color: Color.fromARGB(
                                                  255,
                                                  238,
                                                  242,
                                                  245,
                                                ),
                                                text: '<h1>',
                                                textColor: Color.fromARGB(
                                                  255,
                                                  80,
                                                  132,
                                                  162,
                                                ),
                                              ),
                                              MyWidget(
                                                flex: 3,
                                                color: Color.fromARGB(
                                                  255,
                                                  204,
                                                  219,
                                                  228,
                                                ),
                                                text: '<p>',
                                                textColor: Color.fromARGB(
                                                  255,
                                                  72,
                                                  101,
                                                  122,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      MyWidget(
                                        color: Color.fromARGB(
                                          255,
                                          80,
                                          132,
                                          162,
                                        ),
                                        text: '<article>',
                                        textColor: Color.fromARGB(
                                          255,
                                          238,
                                          242,
                                          245,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        MyWidget(
                          text: '<footer>',
                          textColor: Color.fromARGB(255, 123, 127, 130),
                          color: Color.fromARGB(255, 66, 68, 70),
                        ),
                        MyWidget(
                          text: '<last>',
                          textColor: Color.fromARGB(255, 123, 127, 130),
                          color: Color.fromARGB(255, 66, 68, 70),
                        ),
                      ],
                    ),
                  ),
                ),
                MyWidget(
                  color: Colors.black,
                  text: '',
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final int flex;
  final Color color;
  final String text;
  final Color textColor;
  const MyWidget({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsetsGeometry.all(15),
        width: double.infinity,
        color: color,
        child: Center(
          child: Text(text, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
