import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';

class CallToActionWidget extends StatelessWidget {
  const CallToActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 1100),
      child: Column(
        children: [
          Text(
            'Choose Your Option',
            textAlign: TextAlign.center,
            style: GoogleFonts.arvo(fontWeight: FontWeight.w500, fontSize: 30),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'But I must explain to you how all this mistaken idea of denouncing',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              color: Color(0xffc5c8c9),
              fontSize: Responsive.isMobile(context) ? 12.5 : 15,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          if (Responsive.isMobile(context))
            Column(
              children: [
                ActionCard(
                  title: 'FREELANCER',
                  continaerColor: Colors.white,
                  textColor: Colors.black,
                  titleColor: Color(0xffc5c8c9),
                  isBorder: true,
                ),
                ActionCard(
                  title: 'STUDIO',
                  continaerColor: Color(0xff8f75be),
                  textColor: Colors.white,
                  titleColor: Color(0xffffc80a),
                  isBorder: false,
                ),
              ],
            ),
          if (Responsive.isDesktop(context) || Responsive.isTablet(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ActionCard(
                    title: 'FREELANCER',
                    continaerColor: Colors.white,
                    textColor: Colors.black,
                    titleColor: Color(0xffc5c8c9),
                    isBorder: true,
                  ),
                ),
                Expanded(
                  child: ActionCard(
                    title: 'STUDIO',
                    continaerColor: Color(0xff8f75be),
                    textColor: Colors.white,
                    titleColor: Color(0xffffc80a),
                    isBorder: false,
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color continaerColor;
  final Color textColor;
  final bool isBorder;

  ActionCard({
    Key? key,
    required this.continaerColor,
    required this.textColor,
    required this.title,
    required this.titleColor,
    required this.isBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
      decoration: BoxDecoration(
          color: continaerColor,
          border: isBorder
              ? Border.all(color: Color(0xffc5c8c9), width: 0.5)
              : Border.all(width: 0.5, color: continaerColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FittedBox(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                  fontSize: 12,
                  letterSpacing: 1.5),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Initially\ndesigned to',
            textAlign: TextAlign.center,
            style: GoogleFonts.arvo(
              fontSize: 30,
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'But I must explain to you how all this\nmistaken idea of denouncing',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              color: Color(0xffc5c8c9),
              fontSize: Responsive.isMobile(context) ? 12 : 12,
            ),
          ),
          SizedBox(
            height: 64,
          ),
          FittedBox(
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffffc80a)),
                borderRadius: BorderRadius.circular(25),
              ),
              hoverColor: Colors.transparent,
              hoverElevation: 8,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Text('BUY NOW',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.montserrat(
                        color: textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
