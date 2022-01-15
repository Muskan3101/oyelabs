import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyelabs/screens/otp_screen.dart';
import 'package:oyelabs/screens/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 50,right: 450),
                child: IconButton(onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                }, icon: const Icon(Icons.arrow_back)),
              ),
               RichText(
                text:const TextSpan(text:"Welcome Back!",
                 style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w700,
                     fontSize: 28),)
               ),
              const SizedBox(
                height: 61.75,
              ),
              Container(
                  height: 63,
                  width: 322,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: const Color(0xFF7583CA)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 34.84, top: 19.47, bottom: 19.47),
                        child: Image.asset("assets/images/fb.png"),
                      ),
                       const SizedBox(
                         width: 26.77,
                       ),
                       RichText(
                         text:const TextSpan(text:"CONTINUE WITH FACEBOOK",
                         style: TextStyle(
                             color: Color(0xFFF6F1FB),
                             fontSize: 14,
                             fontWeight: FontWeight.w500),)
                       )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 63,
                  width: 322,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: const Color(0xFFEBEAEC)),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 34.84, top: 19.47, bottom: 19.47),
                        child: Image.asset("assets/images/google.png"),
                      ),
                       const SizedBox(
                         width: 26.77,
                       ),
                       RichText(
                         text:const TextSpan(text:"CONTINUE WITH GOOGLE",
                         style: TextStyle(
                             color: Color(0xFF3F414E),
                             fontSize: 14,
                             fontWeight: FontWeight.w500),)
                       )
                    ],
                  )),
              const SizedBox(
                height: 61.75,
              ),
              RichText(
                text:const TextSpan(text:"OR CONTINUE WITH PHONE NUMBER",
                style: TextStyle(
                    color: Color(0xFFA1A4B2),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),)
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 63,
                width: 322,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F7),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: 'US',
                      showDropDownButton: true,
                      padding: EdgeInsets.zero,
                    ),
                    const VerticalDivider(
                      width: 9.35,
                      thickness: 0.5,
                      indent: 14,
                      endIndent: 13,
                      color: Colors.black38,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                     RichText(text:TextSpan(text:"Enter Mobile Number",style: GoogleFonts.inter(color: const Color(0xFF31373A),fontWeight: FontWeight.w400,fontSize: 15),))
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OTPScreen()));
                },
                child: Container(
                  height: 63,
                  width: 322,
                  decoration: BoxDecoration(
                      color: const Color(0xFF171717),
                      borderRadius: BorderRadius.circular(38)),
                  child: Center(
                      child: RichText(
                   text:const TextSpan(text: "LOG IN",
                    style: TextStyle(
                        color: Color(0xFFF6F1FB),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),)
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(text:const TextSpan(text:"Forgot Password?",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600),)),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("DON’T HAVE AN ACCOUNT? ",style: TextStyle(color: Color(0xFF9C9C9C),fontSize: 14,fontWeight: FontWeight.w500),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                      },
                      child: RichText(text:const TextSpan(text:"SIGN UP",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w500),))
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
