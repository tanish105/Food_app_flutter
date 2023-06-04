import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Details',
          style: GoogleFonts.poppins(
              color: Color(0xFF146C94),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: ListView(
            children: [
              TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.fastfood_rounded,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Food item',
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
                  labelText: 'Enter pick up location',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.access_time_filled,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Preferred time',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.people_alt,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Quantity (no of persons)',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
