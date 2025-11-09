import 'package:flutter/material.dart';

class LiveTestScreen extends StatelessWidget {
  const LiveTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 11,
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                hintText: 'Hasan',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // Content Padding
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // Content Padding
              ),
            ),
          ],
        ),
      ),
    );
  }
}
