import 'package:flutter/material.dart';
import 'const.dart';
//import 'package:google_fonts/google_fonts.dart';

class ContinueAs extends StatelessWidget {
  const ContinueAs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

     //alignment
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
             
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),

//image
                Container(
                  margin: const EdgeInsets.only(top: 45.0),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/1.png'),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),

//title
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    'Petpal Cares\nYour Pet!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      fontSize: 42,
                    ),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                ),

//sign in button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,

     //the actual button

                      child: ElevatedButton(
                        onPressed: () {
                          // Your button action here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              HexColor('FFCC01', 1), // background color
                          foregroundColor: Colors.white, // foreground color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            //side: BorderSide(color: Colors.yellow, width: 0.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Continue as Customer',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )),
                ),

//OR
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Or',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),


// Sign in as shop owner
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,

                      //the actual button

                      child: ElevatedButton(
                        onPressed: () {
                          // Your button action here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              HexColor('FFCC01', 1), // background color
                          foregroundColor: Colors.white, // foreground color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            //side: BorderSide(color: Colors.yellow, width: 0.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Continue as Shop Owner',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
