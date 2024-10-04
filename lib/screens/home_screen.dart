import 'package:flutter/material.dart';
import 'package:iqroapp/screens/create_account.dart';
import 'package:iqroapp/screens/screen_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for the stars icon
            Center(
              child: Icon(
                Icons.star_border, // You can replace this with your custom star icon
                size: 100,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            
            // Title
            Text(
              'Explore the Iqro',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            
            // Subtitle
            Text(
              'Halaman Sign In pada aplikasi Iqro berfungsi\nsebagai pintu masuk bagi pengguna untuk\nmengakses seluruh fitur dan konten yang ada',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40),
            
            // Sign In button
            ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),

              
              child: Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenHome(),));
                    },
                    child: Container(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 18,
                           color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),
            SizedBox(height: 10),
            
            // Create account button
            OutlinedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(color: Colors.black),
              ),
              child: Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccount(),));
                  },
                    child: Container(
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}