import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff9593a),
      ),
      child: Column(
        children: [
          Header(),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  Text('FOR LANDING PAGES',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 12)),
                  SizedBox(height: 16),
                  Text(
                    'Favourable Circumstances\n of Portable Bluetooth',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arvo(
                        color: Colors.white,
                        fontSize: Responsive.isMobile(context) ? 30 : 45),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffffc80a).withOpacity(0.1),
                              blurRadius: 1,
                              offset: Offset(0, 1))
                        ]),
                    child: FittedBox(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Color(0xffffc80a),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Text('DOWNLOAD IT',
                              textAlign: TextAlign.end,
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final myStyle = GoogleFonts.montserrat(
      color: Colors.white, letterSpacing: 1.5, fontSize: 12);

  Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: Responsive.isMobile(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Plasti',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Text(
                'cine',
                style: GoogleFonts.playfairDisplay(
                  color: Color(0xffffc80a),
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          if (!Responsive.isMobile(context))
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('SUBSCRIBE',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 12, letterSpacing: 1.5)),
              ),
            )
        ],
      ),
    );
  }
}
