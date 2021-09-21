import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 1100),
      child: Responsive(
          mobile: Column(
            children: [
              Text(
                'GET IN\nTOUCH\nWITH US',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: Responsive.isTablet(context) ? 57 : 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Color(0xffc5c8c9),
                    size: 12,
                  ),
                  label: Text(
                    '+234 808 929 3824',
                    style: GoogleFonts.openSans(
                        color: Color(0xffc5c8c9), fontSize: 12),
                  )),
              SizedBox(
                height: 16,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email,
                    color: Color(0xffc5c8c9),
                    size: 12,
                  ),
                  label: Text(
                    'flexable@mail.com',
                    style: GoogleFonts.openSans(
                        color: Color(0xffc5c8c9), fontSize: 12),
                  )),
              Container(
                child: Form(
                  child: Column(
                    children: [
                      IInputForm(
                        title: 'NAME',
                        isRequired: true,
                      ),
                      SizedBox(height: 16),
                      IInputForm(
                        title: 'COMPANY',
                      ),
                      SizedBox(height: 16),
                      IInputForm(
                        title: 'PHONE',
                        isRequired: true,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            maxLines: 3,
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              labelText: 'MESSAGE',
                              labelStyle: GoogleFonts.montserrat(
                                  color: Color(0xffc5c8c9),
                                  letterSpacing: 1.5,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffc5c8c9),
                                ),
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffc5c8c9),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                      SizedBox(height: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 19,
                              ),
                              label: Text(
                                'Required Field',
                                style: GoogleFonts.openSans(
                                    color: Color(0xffc5c8c9), fontSize: 10),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          FittedBox(
                            child: MaterialButton(
                              onPressed: () {},
                              color: Color(0xffffc80a),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 16),
                                child: Text('SUBMIT',
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
                    ],
                  ),
                ),
              )
            ],
          ),
          desktop: DesktopForm()),
    );
  }
}

class DesktopForm extends StatelessWidget {
  const DesktopForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'GET IN\nTOUCH\nWITH US',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: Responsive.isDesktop(context)
                      ? 75
                      : Responsive.isTablet(context)
                          ? 57
                          : 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Color(0xffc5c8c9),
                ),
                label: Text(
                  '+234 808 929 3824',
                  style: GoogleFonts.openSans(
                      color: Color(0xffc5c8c9), fontSize: 14),
                )),
            SizedBox(
              height: 16,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.email,
                color: Color(0xffc5c8c9),
              ),
              label: Text(
                'flexable@mail.com',
                style: GoogleFonts.openSans(
                    color: Color(0xffc5c8c9), fontSize: 14),
              ),
            ),
          ],
        )),
        Expanded(
            child: Form(
          child: Column(
            children: [
              IInputForm(
                title: 'NAME',
                isRequired: true,
              ),
              SizedBox(height: 16),
              IInputForm(
                title: 'COMPANY',
              ),
              SizedBox(height: 16),
              IInputForm(
                title: 'PHONE',
                isRequired: true,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    maxLines: 3,
                    style: GoogleFonts.openSans(fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      labelText: 'MESSAGE',
                      labelStyle: GoogleFonts.montserrat(
                          color: Color(0xffc5c8c9),
                          letterSpacing: 1.5,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffc5c8c9),
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffc5c8c9),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 19,
                      ),
                      label: Text(
                        'Required Field',
                        style: GoogleFonts.openSans(
                            color: Color(0xffc5c8c9), fontSize: 10),
                      )),
                  MaterialButton(
                    onPressed: () {},
                    color: Color(0xffffc80a),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                      child: Text('SUBMIT',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ))
      ],
    );
  }
}

class IInputForm extends StatelessWidget {
  final String title;
  bool isRequired = false;
  IInputForm({
    Key? key,
    required this.title,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: TextField(
          style: GoogleFonts.openSans(fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            labelText: title,
            labelStyle: GoogleFonts.montserrat(
                color: Color(0xffc5c8c9),
                letterSpacing: 1.5,
                fontSize: 12,
                fontWeight: FontWeight.bold),
            suffixIcon: isRequired
                ? Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 10,
                  )
                : null,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffc5c8c9),
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffc5c8c9),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
