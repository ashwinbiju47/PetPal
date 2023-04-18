import 'package:flutter/material.dart';
import 'Customer_p1.dart';
import 'const.dart';

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
                const CustomText(
                  text: 'Petpal Cares\nYour Pet!',
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                ),

//sign in button

                CustomButton(
                  buttonName: 'Continue as Customer',
                  onPressed: () {
                    // Your button action here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomerP1()),
                    );
                  },
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

                CustomButton(
                  buttonName: 'Continue as Shop Owner',
                  onPressed: () {
                    // Your button action here
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
