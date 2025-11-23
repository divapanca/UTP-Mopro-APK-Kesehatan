import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildListItem(BuildContext context, String title) {
    void navigateToScreen() {
      if (title.contains('BMI')) {
        Navigator.pushNamed(context, '/bmi'); 
      } else if (title.contains('Calories')) {
        Navigator.pushNamed(context, '/calories'); 
      } else if (title.contains('Blood Volume')) {
        Navigator.pushNamed(
          context,
          '/blood_volume',
        ); 
      } else if (title.contains('Ideal Weight')) {
        Navigator.pushNamed(
          context,
          '/ideal_weight',
        ); 
      }
    }

    return GestureDetector(
      onTap: navigateToScreen,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            
            const SizedBox(
              width: 40,
              height: 40,
              child: Placeholder(color: Colors.black),
            ),
            const SizedBox(width: 16),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width:
                        MediaQuery.of(context).size.width *
                        0.4, 
                    height: 8,
                    color: Colors.grey[300],
                    margin: const EdgeInsets.only(top: 4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        automaticallyImplyLeading:
            false, 
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Center(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(
                  24.0,
                ), 
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
            ),

            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  
                  const SizedBox(
                    width: 60,
                    height: 60,
                    child: Placeholder(color: Colors.black),
                  ),
                  const SizedBox(width: 16),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 10,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 120,
                        height: 10,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 100,
                        height: 10,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            
            _buildListItem(context, 'BMI'),
            _buildListItem(context, 'Calories'),
            _buildListItem(context, 'Blood Volume'),
            _buildListItem(context, 'Ideal Weight'),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
