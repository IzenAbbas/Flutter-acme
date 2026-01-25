import 'package:flutter/material.dart';

class WhatsappClone extends StatefulWidget {
  const WhatsappClone({super.key});

  @override
  State<WhatsappClone> createState() => _WhatsappCloneState();
}

class _WhatsappCloneState extends State<WhatsappClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Whatsapp', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 174, 89)),
    ),
    actions: [Icon(Icons.camera_alt_outlined), Icon(Icons.more_vert)]));
  }
}