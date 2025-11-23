import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';

class CaloriesScreen extends StatelessWidget {
  const CaloriesScreen({super.key});

  Widget _buildInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: double.infinity,
        height: 10,
        color: Colors.grey[300],
      ),
    );
  }

  Widget _buildSmallButton(BuildContext context, String text) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (text == 'Calculate') {
            Navigator.pushNamed(context, '/calories_result');
          }
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calories')),
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

            _buildInputField(),
            _buildInputField(),
            _buildInputField(),
            _buildInputField(),
            _buildInputField(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  _buildSmallButton(context, 'Calculate'),
                  _buildSmallButton(context, 'Reset'),
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
