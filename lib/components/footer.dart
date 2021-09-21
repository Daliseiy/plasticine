import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';

class FooterSection extends StatelessWidget {
  FooterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double kPadding = Responsive.isDesktop(context) ? 100 : 20;

    return Container(
      color: Color(0xff2c2c2c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding, vertical: 20),
            child: Row(
              children: [
                FooterList(
                  title: 'PRODUCTS',
                  contents: ['Popular', 'Catalog', 'Trending', 'Features'],
                ),
                FooterList(
                  title: 'COMPANY',
                  contents: ['Press Releases', 'Mission', 'Strategy', 'Works'],
                ),
                if (!Responsive.isMobile(context))
                  FooterList(
                    title: 'LEARN MORE',
                    contents: [
                      'Supports',
                      'Developer',
                      'Customer Service',
                      'Get Started'
                    ],
                  ),
                if (Responsive.isDesktop(context)) FollowUs()
              ],
            ),
          ),
          if (Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: Row(
                children: [
                  FooterList(
                    title: 'LEARN MORE',
                    contents: [
                      'Supports',
                      'Developer',
                      'Customer Service',
                      'Get Started'
                    ],
                  ),
                ],
              ),
            ),
          if (!Responsive.isDesktop(context))
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: kPadding),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/images/twitter.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/images/linked.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/images/pintrest.png',
                    ),
                  ],
                ),
              ),
            ),
          Divider(
            color: Color(0xff9e9e9e),
          ),
          SizedBox(
            height: 16,
          ),
          Responsive(
            mobile: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(
                  height: 16,
                ),
                Text('PRIVACY POLICY',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: 1.5)),
                SizedBox(
                  height: 16,
                ),
                Text('TERMS AND CONDITIONS',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: 1.5)),
                SizedBox(
                  height: 16,
                ),
                Text('COPYRIGHT NOTIFICATIONS',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: 1.5)),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
            desktop: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
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
                  ),
                  Expanded(
                    child: Text('PRIVACY POLICY',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 1.5)),
                  ),
                  Expanded(
                    child: Text('TERMS AND CONDITIONS',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 1.5)),
                  ),
                  Expanded(
                    child: Text('COPYRIGHT NOTIFICATIONS',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 1.5)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              '\u00a9 2021 Plasticine. All rights reserved.',
              style: GoogleFonts.openSans(
                color: Color(0xff9e9e9e),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FooterList extends StatelessWidget {
  final String title;
  final List<String> contents;
  FooterList({
    Key? key,
    required this.title,
    required this.contents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                  letterSpacing: 1.5)),
          SizedBox(
            height: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                contents.length,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        contents[index],
                        style: GoogleFonts.openSans(
                            color: Color(0xff9e9e9e),
                            fontSize: 12,
                            letterSpacing: 1.5),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}

class FollowUs extends StatelessWidget {
  final List<String> social = [
    'assets/images/facebook.png',
    'assets/images/twitter.png',
    'assets/images/linked.png',
    'assets/images/pintrest.png'
  ];
  FollowUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            social.length,
            (index) => Image.asset(social[index]),
          ),
        )
      ],
    ));
  }
}
