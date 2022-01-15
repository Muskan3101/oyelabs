import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyelabs/screens/login_screen.dart';

import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/Frame.png"),
          const Text(
            "Your Home services Expert",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Continue with Phone Number",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0xFF9C9C9C)),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            height: 63,
            width: 322,
            decoration: BoxDecoration(
                color: const Color(0xFFF2F3F7),
                borderRadius: BorderRadius.circular(15)),
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
                const Text("Enter Mobile Number",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OTPScreen()));
            },
            child: Container(
              height: 63,
              width: 322,
              decoration: BoxDecoration(
                  color: const Color(0xFF171717),
                  borderRadius: BorderRadius.circular(38)),
              child: const Center(
                  child: Text(
                "SIGN UP",
                style: TextStyle(
                    color: Color(0xFFF6F1FB),
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "VIEW OTHER OPTION",
              style: TextStyle(
                  color: Color(0xFF5A77FF),
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ALREADY HAVE AN ACCOUNT? ",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LogInScreen()));
                  },
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
