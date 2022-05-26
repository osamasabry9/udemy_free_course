import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemyfreecourse/views/home.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "udemy free course app",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/intro.svg",
              height: MediaQuery.of(context).size.height/2,
              width: 324,
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              "Find Your Favourite Course",
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Color(0xff232323),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, bottom: 9),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy eirmod\n tempor invidunt ut labore et dolore",
                style:
                    GoogleFonts.poppins(color: Color(0xffBBBBBB), fontSize: 14),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => Home()));
                },
                child: Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xff6CC4EE),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
