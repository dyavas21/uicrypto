import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                child: Image.asset(
                  'assets/profile.png',
                  width: 80,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Willa Madelaine',
                style: GoogleFonts.poppins(
                  color: Color(0xff282B6D),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '@willamaddy',
                style: GoogleFonts.poppins(
                  color: Color(0xff9BA6B6),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget balance() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
          bottom: 30,
        ),
        width: 327,
        height: 210,
        decoration: BoxDecoration(
          color: Color(0xff5735D2),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Balance',
                style: GoogleFonts.poppins(
                  color: Color(0xffBFADFF),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '\$80,450,000',
                style: GoogleFonts.poppins(
                  color: Color(0xffFFFFFF),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This Month Profit',
                          style: GoogleFonts.poppins(
                            color: Color(0xffBFADFF),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$41,000',
                              style: GoogleFonts.poppins(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Image.asset(
                              'assets/percent.png',
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Image.asset(
                        'assets/graph.png',
                        width: 146.5,
                        height: 74.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          balance(),
        ],
      ),
    );
  }
}
