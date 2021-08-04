import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          child: Text(
            'Create an Account',
            style:  GoogleFonts.patrickHand(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            onPrimary: Colors.white,
            shadowColor: Colors.blueAccent,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3))
                ),
          ),
          onPressed: () {
            //Do Nothing
          },
        ),
      ),
    );
  }
}
