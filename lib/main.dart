import 'package:flutter/material.dart';

void main() {
  runApp(ProcessApp());
}

class ProcessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalahari Trip',
      home: ProcessScreen(),
    );
  }
}

class ProcessScreen extends StatefulWidget {
  @override
  _ProcessScreenState createState() => _ProcessScreenState();
}

//Starting of the first line
class _ProcessScreenState extends State<ProcessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalahari Trip'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('Breakfast @Culvers'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('Check-in'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('Water park'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('Dinner PM'),
                ),
              ],
            ),
            Divider(),
            // Timeline work. I repeated "LineConnector()," to bring it on the correct line :(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LineConnector(),
                LineConnector(),
                StepIndicator(isCompleted: true),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                StepIndicator(isCompleted: true),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                StepIndicator(isCompleted: true),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                LineConnector(),
                StepIndicator(isCompleted: false),
                LineConnector(),
                LineConnector(),
              ],
            ),
            Divider(), // Adds a horizontal line divider
            //last line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('7:30 AM'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('9:30 AM'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('11:30 AM'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0), // Adjust the padding as needed
                  child: Text('8:30 PM'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StepIndicator extends StatelessWidget {
  final bool isCompleted;

  const StepIndicator({required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompleted ? Color.fromARGB(255, 75, 18, 206) : Colors.grey,
      ),
      child: Center(
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}

class LineConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 3,
      color: const Color.fromARGB(255, 2, 2, 2),
    );
  }
}
