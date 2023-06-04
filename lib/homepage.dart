import 'package:flutter/material.dart';
import 'package:food_app/donor_details.dart';
import 'package:food_app/NGO_details.dart';
import 'package:food_app/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:footer/footer_view.dart';
import 'package:footer/footer.dart';

import 'food_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.food_bank,
                size: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You can help beat hunger!',
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'choose any one',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DonorDetails()));
                    },
                    icon: const Icon(
                      Icons.fastfood_outlined,
                      size: 60,
                    ),
                    highlightColor: Color(0xFF146C94),
                  ),
                  Text(
                    'Donate',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Donate your food',
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  Text(
                    'for needy',
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NGOdetails()));
                    },
                    icon: const Icon(
                      Icons.delivery_dining_outlined,
                      size: 60,
                    ),
                    highlightColor: Color(0xFF146C94),
                  ),
                  Text(
                    'NGO Agent',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Food pickup and',
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  Text(
                    'deliver',
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          // Image.asset(
          //   'images/hungry1.jpg',
          //   height: 120,
          //   width: 120,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Existing user?',
                style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ],
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF146C94),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  color: Color(0xFFF6F1F1),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage()));
              },
            ),
          ),
          const SizedBox(
            height: 56,
          ),
          Container(
            height: 59,
            width: double.infinity,
            color: Color(0xFF146C94),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'We are hungry for donations',
                  style: GoogleFonts.poppins(
                      color: Color(0xFFF6F1F1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
