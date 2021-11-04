import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicrypto/widgets/Main%20Menu/analytic_menu.dart';
import 'package:uicrypto/widgets/Main%20Menu/message_menu.dart';
import 'package:uicrypto/widgets/Main%20Menu/transfer_menu.dart';
import 'package:uicrypto/widgets/Main%20Menu/verify_menu.dart';
import 'package:uicrypto/widgets/Main%20Menu/wallet_menu.dart';
import 'package:uicrypto/widgets/Main%20Menu/withdraw_menu.dart';
import 'package:uicrypto/widgets/crypto_card1.dart';
import 'package:uicrypto/widgets/crypto_card2.dart';
import 'package:uicrypto/widgets/crypto_card3.dart';

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
                  top: 10,
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
          top: 20,
          left: 24,
          right: 24,
        ),
        width: double.infinity,
        height: 180,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget myAssets() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Assets',
              style: GoogleFonts.poppins(
                color: Color(0xff282B6D),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        CryptoCard1(),
                        CryptoCard2(),
                        CryptoCard3(),
                        CryptoCard1(),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget mainMenu() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Main Menu',
                style: GoogleFonts.poppins(
                  color: Color(0xff282B6D),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnalyticMenu(),
                  WithdrawMenu(),
                  TransferMenu(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 6,
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WalletMenu(),
                  MessageMenu(),
                  VerifyMenu(),
                ],
              ),
            )
          ],
        ),
      );
    }

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           header(),
//           balance(),
//           myAssets(),
//           mainMenu(),
//         ],
//       ),
//     );
//   }
// }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          balance(),
          myAssets(),
          mainMenu(),
        ],
      ),
    );
  }
}
