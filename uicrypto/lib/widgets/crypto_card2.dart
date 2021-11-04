import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 133,
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xffF5F5F5).withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(7.0, 8.0))
        ],
        color: Colors.white,
        border: Border.all(
          color: Color(0xffF5F5F5),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
          left: 14,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/eth.png',
              width: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'ETH',
              style: GoogleFonts.poppins(
                color: Color(0xff9BA6B6),
                fontSize: 12,
              ),
            ),
            Text(
              '\$12,100',
              style: GoogleFonts.poppins(
                color: Color(0xff282B6D),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
