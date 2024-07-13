import 'package:comai_project/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'input_page.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => TextInputPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(
                        Icons.share, 
                        color: Colors.white, 
                        size: 90,)),
                  ),
                ),
                Positioned(
                  right: 17,
                  bottom: 15,
                  child: Icon(
                    Icons.ads_click_rounded,
                    color: Colors.amber, 
                    size: 34,
                    shadows: [
                      Shadow(
                        color: Colors.black45, 
                        blurRadius: 1.5, 
                        offset: Offset.fromDirection(1.2)
                        )],
                        ).animate(
                          delay: 500.microseconds,
                          onPlay: (controller) => controller.repeat(),
                        ).fadeIn(
                          delay: Duration(milliseconds: 100), 
                          duration: Duration(milliseconds: 600))
                          .fadeOut(
                          delay: Duration(milliseconds: 600), 
                          duration: Duration(milliseconds: 1200)
                          ),
                    ),
              ],),

              Text("ComAI",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.amber,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,),
                  ),

              Text("On click away!",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,),
                  )
          ],),
      ),
    );
  }
  
}

