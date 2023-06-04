import 'package:flutter/material.dart';
import 'package:food_app/food_details.dart';
import 'package:google_fonts/google_fonts.dart';

class DonorDetails extends StatefulWidget {
  const DonorDetails({Key? key}) : super(key: key);

  @override
  State<DonorDetails> createState() => _DonorDetailsState();
}

class _DonorDetailsState extends State<DonorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donor Details',
          style: GoogleFonts.poppins(
              color: Color(0xFF146C94),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.restaurant,
                  color: Color(0xFF146C94),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Are you an individual/restaurant?',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xFF146C94),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Enter your Name',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_android,
                  color: Color(0xFF146C94),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Enter your Phone No.',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
            ),
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
            TextFormField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.location_on,
                  color: Color(0xFF146C94),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Enter your location',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
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
