import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/action.dart';
import 'components/contact.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/pricing.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor:
            Colors.deepOrange.shade700, //or set color with: Color(0xFF0000FF)
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSection(),
              PricingSection(),
              CallToActionWidget(),
              SizedBox(
                height: 20,
              ),
              ContactSection(),
              SizedBox(
                height: 20,
              ),
              FooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
