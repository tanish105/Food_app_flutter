import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NGOhome extends StatefulWidget {
  const NGOhome({Key? key}) : super(key: key);

  @override
  State<NGOhome> createState() => _NGOhomeState();
}

class _NGOhomeState extends State<NGOhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food donors available',
          style: GoogleFonts.poppins(
              color: Color(0xFF146C94),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
