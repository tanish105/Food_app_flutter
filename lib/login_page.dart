import 'package:flutter/material.dart';
import 'package:food_app/NGO_home.dart';
import 'package:food_app/food_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String url = "localhost:3000/users";
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: ListView(
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
                labelText: 'Enter registered Email-ID',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                  color: Color(0xFF146C94),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Password',
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

  void login()async{
      var response = await http.post(Uri.parse(url),
      body: json.encode({
        "name": "Takshal",
        "email": "takshal@gmail.com",
        "password": "12345678",
        "phone_number": 7861853147,
        "address": "Gujarat, India, Earth, Milky Way"
      }));
  }
}


