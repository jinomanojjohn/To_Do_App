import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        body: SafeArea(
          child: SizedBox.expand(
            child: Stack(
              children: [
                Image.asset("assets/sky.jpg"),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Task Manager",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text("December 19",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text("Completed"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Column(
                            children: const [
                              TaskItem(),
                              TaskItem(),
                              TaskItem(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue.shade700,
                                foregroundColor: Colors.white),
                            child: const Text("Add Task"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: Icon(Icons.place),
          ),
          SizedBox(width: 10),
          Text(
            "Task 1",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Checkbox(value: false, onChanged: null)
        ],
      ),
    );
  }
}
