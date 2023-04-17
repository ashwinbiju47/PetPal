import 'package:flutter/material.dart';
import 'package:petpal/continue_as.dart';
//import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(title: Text('Login Page')),

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
                  height: MediaQuery.of(context).size.height / 6,
                ),

//sign in button

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,

                    //the actual button

                    child: TextButton.icon(
                      onPressed: () {
                        // Your button action here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContinueAs()),
                        );
                      },
                      icon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          height: 22,
                          width: 22,
                          child: Image.asset('assets/images/2.ico'),
                        ),
                      ),
                      label: const Text(
                        'Continue with Google',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18.0,
                          // foreground: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white70, // background color
                        foregroundColor: Colors.black, // foreground color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Color.fromARGB(255, 147, 147, 147), width: 1.0),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
