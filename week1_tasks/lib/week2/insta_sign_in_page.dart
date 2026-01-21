import 'package:flutter/material.dart';

class InstaSignInPage extends StatefulWidget {
  const InstaSignInPage({super.key});

  @override
  State<InstaSignInPage> createState() => _InstaSignInPageState();
}

class _InstaSignInPageState extends State<InstaSignInPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.only(bottom: 30),
              child: Image.asset(
                'assets/images/Instagram_logo.png',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: SizedBox(
                width: 500,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    hintText: 'Phone-number, username, or email',
                    fillColor: Colors.grey[100],
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: SizedBox(
                width: 500,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    hintText: 'Password',
                    fillColor: Colors.grey[100],
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 0,
                    ),
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: SizedBox(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: SizedBox(
                width: 500,
                child: Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[400])),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey[400])),
                  ],
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.facebook, color: Colors.blue),
              label: Text(
                'Log in with Facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Divider(color: Colors.grey[400]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign up.",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
