import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Otp_Verification extends StatelessWidget {
  const Otp_Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xffffffff),
            body: Stack(
              children:<Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 80),

                    Padding(
                      padding: const EdgeInsets.only(left:40.0,right:10.0,bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text("Verify your device",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff375172),
                                fontSize: 45),),
                          SizedBox(height: 10,),
                          Text("Please enter the 4 digit code send to your device",
                            style: TextStyle(
                                color: Color(0xff375172),
                                fontSize: 20
                            ),),
                        ],
                      ),
                    ),

                  ],
                ),

                //Required Fields
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4,
                          left: 50,
                          right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  const <Widget>[
                          SizeBox_Otp(),
                          SizeBox_Otp(),
                          SizeBox_Otp(),
                          SizeBox_Otp(),
                      ],
                    ),
                    ),

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 180.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 20,
                               ),
                          ),
                          onPressed: () {print("test");},
                          child: const Text('Resend Code', style: TextStyle(color: Color(0xff375172)),),
                        ),
                      ),

                    ),
                    // ),
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}

class SizeBox_Otp extends StatelessWidget {
  const SizeBox_Otp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        onChanged: (value) {
      if (value. length == 1) {
        FocusScope.of(context).nextFocus();
      }},
        style: Theme.of (context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
      ],
      ),
    );
  }
}
