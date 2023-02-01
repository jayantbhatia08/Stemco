import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'AppBar_Icons.dart';
import 'Text_Field.dart';
import 'Different_Validators.dart';

import 'Sign_In.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  void initState() {
    super.initState();}

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        shadowColor: Colors.transparent,

        actions: const <Widget>[
          Appbar_Icons(),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: SizedBox(height: 10,),
        ),

      ),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, right: 10.0, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff375172),
                            fontSize: 50),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sign up to create a company!",
                        style:
                            TextStyle(color: Color(0xff375172), fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Required Fields
            SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2,
                      left: 50,
                      right: 50),
                  child: Column(
                    children: <Widget>[
                        Text_Field(
                        hint_text: "Email Address",
                        icon: Icon(Icons.close),
                          Obscure: false,
                       validator: (val){
                          print("test$val");
                         if (val !.isEmpty && val.isValidEmail)
                           return 'Enter valid email';
                         return null;
                       },
                      ),
                       Text_Field(
                        hint_text: "Password",
                        icon: Icon(Icons.remove_red_eye),
                         Obscure: true,
                        validator: (val){
                          if (val !.isEmpty || !val.isValidPassword)
                            return 'Enter valid Password';
                          return null;
                        },

                      ),
                       Text_Field(
                        hint_text: "Confirm Password",
                        icon: const Icon(Icons.remove_red_eye),
                        Obscure: true,
                        validator: (val){
                          if (val !.isEmpty || !val.isValidPassword)
                            return 'Enter valid Password';
                          return null;
                        },
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(
                            left: 40,
                          ),
                          child: Text('Password need to be 6 character',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff375172))),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff375172),
                        ),
                        child: Center(
                          child: TextButton(
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_In(
                                )));
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}