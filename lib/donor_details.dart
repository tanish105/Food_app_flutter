import 'package:flutter/cupertino.dart';
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
  List<String> list = <String>['Individual', 'Organization'];
  bool state = false;

  Widget build(BuildContext context) {
    String dropdownValue = list.first;
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: CupertinoSwitch(
                  value:state,
                  onChanged: (value){
                    state = value;
                    setState(() {

                    },
                    );
                  },
                  thumbColor: Color(0xFF146C94),
                  activeColor: Color(0x78788028),
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
                  labelText: state?'Enter organization Name':'Enter your Name',
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
                  labelText: state?'Enter organization Number':'Enter your Number',
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
                  labelText: state?'Enter organization Email-ID':'Enter your Email-ID',
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
                  labelText: 'Enter password',
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
                  labelText: state?'Enter organization location':'Enter your location',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(10, 5),
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
