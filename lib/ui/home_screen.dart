import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Experiment with text styles',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  const snackBar =
                      SnackBar(content: Text('You clicked the button!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text(
                  'Click Me',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Flutter!',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.cyan),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
