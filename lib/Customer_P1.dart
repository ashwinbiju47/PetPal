import 'package:flutter/material.dart';
import 'package:petpal/customer_homepage.dart';
import 'const.dart';

class CustomerP1 extends StatelessWidget {
  const CustomerP1({super.key});

  @override
  Widget build(BuildContext context) {
    backgroundColor:
    Colors.white;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

              //alignment
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1,
                  alignment: Alignment.topLeft,
                  child: const CustomText(
                    text: 'Petpal Cares\nYour Pet!',
                  ),
                ),
                SizedBox(
                    height: 0.0), // Set the desired height between the widgets
                Transform.scale(
                  scale: 1,
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 0.0),
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/1.png'),
                  ),
                ),
                SizedBox(
                    height: 0.0), // Set the desired height between the widgets
                Transform.scale(
                  scale: 0.8,
                  alignment: Alignment.topLeft,
                  child: const CustomText(
                    text: 'Why wait?\nRegister Here.',
                  ),
                ),

                SizedBox(
                  height: 5.0,
                ), // Add spacing between input boxes and other widgets
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          BorderRadius.circular(10.0), // Add rounded edges
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your address',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                ),
// Sign in as shop owner
                SizedBox(
                  height: 10.0,
                ),
                CustomButton(
                  buttonName: 'Register as a Customer',
                  onPressed: () {
                    // Your button action here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homepage()),
                    );

                  },
                ),
              ]),
        ),
      ),
    );
  }
}
