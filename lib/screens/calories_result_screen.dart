import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';

class CaloriesResultScreen extends StatelessWidget {
  const CaloriesResultScreen({super.key});

  Widget _buildResultRow() {
    return Container(
      width: double.infinity,
      height: 10,
      color: Colors.grey[300],
      margin: const EdgeInsets.only(bottom: 8),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calories - Hasil')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
              ),
              child: const SizedBox(
                width: 60,
                height: 60,
                child: Placeholder(color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(14.0),
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
              ),
              child: const SizedBox(
                width: 100,
                height: 100,
                child: Placeholder(color: Colors.black),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                  _buildResultRow(),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(child: _buildResultRow()),
                  Expanded(child: _buildResultRow()),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
