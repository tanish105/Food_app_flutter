import 'package:food_app/NGO_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'food_details.dart';

class NGOdetails extends StatefulWidget {
  const NGOdetails({Key? key}) : super(key: key);

  @override
  State<NGOdetails> createState() => _NGOdetailsState();
}

class _NGOdetailsState extends State<NGOdetails> {

  TextEditingController type_of_ngo = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController location = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    type_of_ngo.dispose();
    name.dispose();
    number.dispose();
    email.dispose();
    password.dispose();
    location.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NGO Details',
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
                controller: type_of_ngo,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.home_work,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Type of NGO',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                controller: name,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter NGO Name',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                controller: number,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter NGO Phone No.',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                controller: email,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter Email-ID',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                controller: password,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter password',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                controller: location,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Color(0xFF146C94),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter NGO location',
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
                            builder: (context) => const NGOhome()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
