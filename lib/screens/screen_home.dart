import 'package:flutter/material.dart';
import 'package:iqroapp/screens/home_screen.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F7), // Light background color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Back Button (Top Left Corner)
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(BackButton) =>  HomeScreen(),));
                },
              ),
            ),
            SizedBox(height: 250),
            
            // Placeholder for the star icon
            Center(
              child: Icon(
                Icons.star_border, // Replace with your custom icon
                size: 100,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            
            // Title
            Text(
              'Explore the app',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            
            // Subtitle
            Text(
              'Fitur ini memungkinkan pengguna untuk menjaga\nprivasi dan mempersonalisasi pengalaman\ndalam menggunakan aplikasi Iqro',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40),
            
            // Continue with Google button
            ElevatedButton.icon(
              onPressed: () {
                // Add your onPressed logic here
              },
              
              label: Text(
                'Continue with Google',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            
            // Continue with Apple button
            ElevatedButton.icon(
              onPressed: () {
                // Add your onPressed logic here
              },
              icon: Icon(
                Icons.apple,
                size: 24,
                color: Colors.black,
              ),
              label: Text(
                'Continue with Apple',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(color: Colors.grey),
              ),
            ),
            SizedBox(height: 40),
            
            // Footer Text
            TextButton(
              onPressed: () {
                // Add sign up logic here
              },
              child: Text(
                'Already have an account? Sign up',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  image({required Image child}) {}
}
    