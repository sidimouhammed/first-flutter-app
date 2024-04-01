import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: SidiId(),
  ));
}

class SidiId extends StatefulWidget {
  @override
  State<SidiId> createState() => _SidiIdState();
}

class _SidiIdState extends State<SidiId> {
  int SIDILEVEL = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
        backgroundColor: Colors.cyan[500],
        title: const Text(
          'Sidi Med Id',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            SIDILEVEL += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('images/SIDIMED.jpg'),
              ),
            ),
            Text(
              'NAME',
              style: TextStyle(
                  fontSize: 20, color: Colors.cyan[600], letterSpacing: 2),
            ),
            Text(
              'Sidi-Med',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green[200],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Country',
              style: TextStyle(
                color: Colors.cyan[600],
                letterSpacing: 2.5,
                fontSize: 20,
              ),
            ),
            Text(
              'Mauritanie',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green[200],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Current sidi Level',
              style: TextStyle(
                color: Colors.cyan[600],
                letterSpacing: 2.5,
                fontSize: 20,
              ),
            ),
            Text(
              '$SIDILEVEL',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green[200],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'ssidimahmoud4@gmail.com',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[200],
                      fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
