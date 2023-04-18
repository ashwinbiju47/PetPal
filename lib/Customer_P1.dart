import 'package:flutter/material.dart';

import 'const.dart';


class CustomerP1 extends StatelessWidget {
  const CustomerP1({super.key});

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
                const CustomText(
                   text: 'Petpal Cares\nYour Pet!',
                ),
//image
                Container(
                  margin: const EdgeInsets.only(top: 45.0),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/1.png'),
                ),


          const CustomText(
                 
                  text: 'Why wait?\nRegister Here.',
                ),
// Sign in as shop owner

                CustomButton(
                  buttonName: 'Register as a Customer',
                  onPressed: () {
                    // Your button action here
                  },
                ),
              ]
          ),
        ),
      ),
    );
  }
}