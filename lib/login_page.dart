import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'food_details.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.poppins(
              color: const Color(0xFF146C94),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
          child:
          Column(
            children: [
              TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter your Email-ID',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter your password',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF146C94),
                  ),
                  child: Text(
                    'Submit',
                    style: GoogleFonts.poppins(
                      color: Color(0xFFF6F1F1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FoodDetails()));
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}
