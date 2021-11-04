import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      width: 94,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(3.0, 5.0))
        ],
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Color(0xffF5F5F5),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 19),
            child: Image.asset(
              'assets/verify.png',
              width: 46,
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            'Verify',
            style: GoogleFonts.poppins(
              color: Color(0xff282B6D),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
