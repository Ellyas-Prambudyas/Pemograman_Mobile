import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       
        padding: EdgeInsets.all(20.0),
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
              'BERHASIL MENDAFTAR',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ]
        )
      );
  }
}