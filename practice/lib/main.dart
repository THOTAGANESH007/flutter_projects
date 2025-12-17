import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task 1",
      home: Scaffold(body: Text("Hello, World!")),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile Picture",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person, size: 100),
              SizedBox(height: 10),
              Text("Tiger"),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ActionBar",
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call),
              SizedBox(width: 20),
              Icon(Icons.message),
              SizedBox(width: 20),
              Icon(Icons.share),
            ],
          ),
        ),
      ),
    );
  }
}

class ColoredBoxes extends StatelessWidget {
  const ColoredBoxes({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ColoredBoxes",
      home: Scaffold(
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Box 1')),
              ),
              Container(
                height: 100,
                color: Colors.green,
                child: Center(child: Text('Box 2')),
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('Box 3')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleScreen extends StatelessWidget {
  const SimpleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Screen",
      home: Scaffold(
        body: Column(
          children: [
            // EMPTY SPACE AT THE TOP (status bar area)
            SafeArea(
              bottom: false,
              child: Container(
                height: 70,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  "Welcome to Flutter",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            // REST OF THE SCREEN
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello, World!"),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: () {}, child: Text("Click Me")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
