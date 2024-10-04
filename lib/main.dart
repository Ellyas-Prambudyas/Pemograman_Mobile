import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iqroapp/screens/home_screen.dart';

void main() {
  runApp(IqroApp());
}

class IqroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'IQRO',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF672CBC),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'IqroApp adalah solusi interaktif\nyang dirancang untuk membantu\nbelajar membaca Al-Quran',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 450,
                width: 314,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xFF863ED5)),
                  child: SvgPicture.asset('assets/svgs/splash.svg')
                ),
                Builder(
                  builder: (context) {
                    return Positioned(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomeScreen(), ));
                        } ,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 56, vertical: 15,
                          ),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF0D3559)),
                          child: Text(
                            'Get Started',style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xFFFFFFFF),
                            
                          ),
                            ),
                        ),
                      ),
                    );
                  }
                )
            ],
          ),
        ),
      ),
    );
  }
}

