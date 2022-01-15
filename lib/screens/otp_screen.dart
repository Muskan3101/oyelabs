import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyelabs/screens/add_address.dart';
import 'package:oyelabs/screens/signup_screen.dart';
class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 50,left: 28,right: 450),
              child: IconButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
              }, icon: const Icon(Icons.arrow_back))
            ),
            const SizedBox(
              height: 49,
            ),
            Center(child: Image.asset("assets/images/otp_image.png")),
            const SizedBox(
              height: 66,
            ),
             RichText(text: TextSpan(text:"OTP Verification",style: GoogleFonts.raleway(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: TextSpan(text: "Enter the OTP sent to ",style: GoogleFonts.inter(color: Colors.black.withOpacity(0.55)))),
                RichText(text: TextSpan(text: "+1 9879878975",style: GoogleFonts.inter(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),))
              ]
            ),
            const SizedBox(
              height: 71
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      maxLength: 1,
                      decoration: InputDecoration(
                          hintText: '7',
                          hintStyle: GoogleFonts.raleway(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 30),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF757575))
                          )
                      ),
                    ),
                  ),
                 const SizedBox(width: 25,),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      maxLength: 1,
                      decoration: InputDecoration(
                          hintText: '1',
                          hintStyle: GoogleFonts.raleway(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 30),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF757575))
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: 25,),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      maxLength: 1,
                      decoration: InputDecoration(
                          hintText: '2',
                          hintStyle: GoogleFonts.raleway(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 30),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF757575))
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: 25,),
                  Expanded(
                    flex: 1,
                    child:TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: '4',
                          hintStyle: GoogleFonts.raleway(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 30),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF757575))
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: TextSpan(text: "OTP not received? ",style: GoogleFonts.inter(fontSize: 15,color: const Color(0xFF757575)))),
                RichText(text: TextSpan(text: "RESEND OTP",style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ADDAddressScreen()));
              },
              child: Container(
                height: 63,
                width: 322,
                decoration: BoxDecoration(
                  color: const Color(0xFF171717),
                  borderRadius: BorderRadius.circular(32)
                ),
                child: Center(child: RichText(text: TextSpan(text: "VERIFY & PROCEED",style: GoogleFonts.inter(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white)),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
