import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ADDAddressScreen extends StatefulWidget {
  const ADDAddressScreen({Key? key}) : super(key: key);

  @override
  _ADDAddressScreenState createState() => _ADDAddressScreenState();
}

class _ADDAddressScreenState extends State<ADDAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 165),
              child: RichText(text: TextSpan(text:"Hey, nice to meet you!",style: GoogleFonts.raleway(color: const Color(0xFF8E8E8E),fontSize:16,fontWeight: FontWeight.w500),)),
            )),
            const SizedBox(height: 24,),
            Center(child: RichText(text: TextSpan(text:"See services around",style: GoogleFonts.raleway(color: const Color(0xFF000000),fontSize:30,fontWeight: FontWeight.w600),))),
            const SizedBox(height: 59,),
            Image.asset("assets/images/address.png"),
            const SizedBox(height: 64,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  height: 63,
                  width: 322,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: const Color(0xFF171717)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 19.47, bottom: 19.47),
                        child: Image.asset("assets/images/gps.png"),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      RichText(
                          text:const TextSpan(text:"Your current location",
                            style: TextStyle(
                                color: Color(0xFFF6F1FB),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),)
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 16.5,
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                  height: 63,
                  width: 322,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: const Color(0xFFEBEAEC)),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 19.47, bottom: 19.47),
                        child: Image.asset("assets/images/search.png"),
                      ),
                      const SizedBox(
                        width: 26.77,
                      ),
                      RichText(
                          text:const TextSpan(text:"Some other location",
                            style: TextStyle(
                                color: Color(0xFFA1A4B2),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),)
                      )
                    ],
                  )),
            ),
          ],
        ),
      )
    );
  }
}
