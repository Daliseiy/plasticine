import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({
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
            'Price Plans',
            textAlign: TextAlign.center,
            style: GoogleFonts.arvo(fontWeight: FontWeight.w500, fontSize: 30),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Technology is always a consequence of science and\nengineering - although technology as a human activity',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              color: Color(0xffc5c8c9),
              fontSize: Responsive.isMobile(context) ? 12.5 : 15,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Responsive(
              mobile: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PricingTag(
                    title: 'STANDARD',
                    imgPath: 'assets/images/fill.png',
                    description:
                        'The development of the mass\nspectrometer allowed the mass\nof atoms to be measured with',
                    price: '19',
                    shadowpath: 'assets/images/Shadow.png',
                  ),
                  PricingTag(
                    title: 'PREMIUM',
                    imgPath: 'assets/images/paper.png',
                    description:
                        'The explanation for these\ndifferent isotopes awaited the\ndiscovery of the neutron, an',
                    price: '39',
                    shadowpath: 'assets/images/PaperShadow.png',
                  ),
                  PricingTag(
                    title: 'LUXURY',
                    imgPath: 'assets/images/vamp.png',
                    description:
                        'The chemist Francis William\nAston used this instrument\nto show that isotopes have different',
                    price: '99',
                    shadowpath: '',
                  ),
                ],
              ),
              desktop: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PricingTag(
                      title: 'STANDARD',
                      imgPath: 'assets/images/fill.png',
                      description:
                          'The development of the mass\nspectrometer allowed the mass\nof atoms to be measured with',
                      price: '19',
                      shadowpath: 'assets/images/Shadow.png',
                    ),
                  ),
                  Expanded(
                    child: PricingTag(
                      title: 'PREMIUM',
                      imgPath: 'assets/images/paper.png',
                      description:
                          'The explanation for these\ndifferent isotopes awaited the\ndiscovery of the neutron, an',
                      price: '39',
                      shadowpath: 'assets/images/PaperShadow.png',
                    ),
                  ),
                  Expanded(
                    child: PricingTag(
                      title: 'LUXURY',
                      imgPath: 'assets/images/vamp.png',
                      description:
                          'The chemist Francis William\nAston used this instrument\nto show that isotopes have different',
                      price: '99',
                      shadowpath: '',
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class PricingTag extends StatefulWidget {
  final String title;
  final String imgPath;
  final String description;
  final String price;
  final String shadowpath;
  PricingTag({
    Key? key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.price,
    required this.shadowpath,
  }) : super(key: key);

  @override
  _PricingTagState createState() => _PricingTagState();
}

class _PricingTagState extends State<PricingTag> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.white,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        decoration: BoxDecoration(
          border: isHover ? Border.all(color: Color(0xffc5c8c9)) : Border(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                if (this.widget.shadowpath.isNotEmpty)
                  Positioned(
                      top: 20,
                      left: 0,
                      right: 20,
                      child: Image.asset(
                        widget.shadowpath,
                        height: 150,
                        width: 200,
                      )),
                Image.asset(
                  widget.imgPath,
                  height: this.widget.shadowpath.isNotEmpty ? 130 : 140,
                  width: this.widget.shadowpath.isNotEmpty ? 130 : 140,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              widget.title,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  letterSpacing: 1.5),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.description,
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.openSans(fontSize: 13, color: Color(0xffc5c8c9)),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$',
                  style: GoogleFonts.arvo(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  widget.price,
                  style: GoogleFonts.arvo(
                      fontWeight: FontWeight.w500, fontSize: 40),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            if (isHover)
              FittedBox(
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0xffffc80a),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: Text('BUY NOW',
                        textAlign: TextAlign.end,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
