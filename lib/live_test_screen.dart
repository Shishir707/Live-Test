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
                hintStyle: TextStyle(color: Colors.red),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // Content Padding
              ),
            ),
          ],
        ),
      ),
    );
  }
}
