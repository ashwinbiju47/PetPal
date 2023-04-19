import 'package:flutter/material.dart';

// convert color to hex

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor, int i) : super(_getColorFromHex(hexColor));
}

//Headings

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w900,
          fontSize: 42,
        ),
      ),
    );
  }
}



//custom button

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonName,
    this.onPressed,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: HexColor('FFCC01', 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              buttonName,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
