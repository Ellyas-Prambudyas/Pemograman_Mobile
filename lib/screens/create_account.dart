import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqroapp/screens/home_screen.dart';
import 'package:iqroapp/screens/log_in.dart';


class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccountPage(),
    );
  }
}

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _confirmPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFFF4F5F7),
      body: Padding(
        padding: const EdgeInsets.all(20.0), 

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          // Placeholder for the star logo/icon
            Center(
              child: Icon(
                Icons.star_border, // Replace with your custom logo or SVG
                size: 100,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            
            // Title
            Text(
              'Create account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            
            // Email Address Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            
            // Password Field
            TextField(
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            
            // Confirm Password Field
            TextField(
              obscureText: !_confirmPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Confirm password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _confirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _confirmPasswordVisible = !_confirmPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            
            // Create Account Button
            ElevatedButton(
              onPressed: () {
                // Add account creation logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => LogIn() ));
                        } ,
                child: Text(
                  'Create account',
                  style: TextStyle(fontSize: 18,
                  color: const Color(0xFFFFFFFF)
                  ),
                  
                ),
              ),
            ),
            SizedBox(height: 30),
            
            // Terms and Conditions Text
            Text.rich(
              TextSpan(
                text: 'By creating an account or signing you agree to our ',
                children: [
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    // Add tap handler for terms and conditions link
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to terms and conditions
                      },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
