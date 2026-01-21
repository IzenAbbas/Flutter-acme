import 'package:flutter/material.dart';
import 'package:week1_tasks/week2/insta_sign_in_page.dart';

class Week2HomePage extends StatefulWidget {
  const Week2HomePage({super.key});

  @override
  State<Week2HomePage> createState() => _Week2HomePageState();
}

class _Week2HomePageState extends State<Week2HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Week2-Tasks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan[300],
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2),
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => InstaSignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2),
                  backgroundColor: Colors.cyan[50],
                ),
                child: Text('Instagram Sign-in Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
