import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_na/screens/add_task_screen.dart';
import 'package:todo_na/screens/task_list_screen.dart';
// import 'package:todo_app/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TaskListScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6B79C0),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: Text(
                    'Manage your Daily TO DO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2, // Limit the text to 2 lines
                  ),
                ),
                const SizedBox(height: 10),
                const Image(
                  image: AssetImage(
                    'assets/images/illustration.png',
                  ),
                  width: 300,
                ),
                Padding(
                  // padding: EdgeInsets.all(16.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFC727),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 40,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFCD873),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 40,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFCD873),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 320,
                  child: Text(
                    'Without much worry just manage things as easy as piece of cake',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AddTaskScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xFFFFC00E),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text(
                    "Create a note",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
