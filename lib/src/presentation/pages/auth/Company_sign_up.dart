import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Different_Validators.dart';
import 'Forget_password.dart';
import 'Text_Field.dart';
import 'AppBar_Icons.dart';

class Company_Sign_up extends StatefulWidget {
  const Company_Sign_up({Key? key}) : super(key: key);

  @override
  State<Company_Sign_up> createState() => Company_Sign_upState();
}

class Company_Sign_upState extends State<Company_Sign_up> {
  @override
  void initState() {
    super.initState();
  }
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
          preferredSize: Size.fromHeight(50),
          child: SizedBox(
            height: 10,
          ),
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 5),
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
                       const Text_Field(
                        hint_text: "Company Name",
                        icon: Icon(Icons.close),
                          Obscure: false,

                      ),
                       Text_Field(
                        hint_text: "First Name And Last Name",
                        icon: const Icon(Icons.close),
                          Obscure: false,
                         validator: (val){
                           if (val != null && !val.isValidName)
                             return 'Enter valid Name';
                         },
                         // inputFormatters: [
                         //   FilteringTextInputFormatter.allow(
                         //     RegExp(r"[a-zA-Z]+|\s"),
                         //   )
                         // ],
                      ),
                       Text_Field(
                        hint_text: "Phone Number",
                        icon: const Icon(Icons.close),
                          Obscure: false,
                         validator: (val){
                           if (val != null && !val.isValidPhone) {
                             return 'Enter valid Phone Number';
                           }
                           return null;
                         },
                         // inputFormatters: [
                         //   FilteringTextInputFormatter.allow(
                         //     RegExp(r"[0-9]"),
                         //   )
                         // ],

                      ),
                       const Text_Field(
                        hint_text: "Address",
                        icon: Icon(Icons.close),
                          Obscure: false,
                      ),
                       Text_Field(
                        hint_text: "Email",
                        icon: const Icon(Icons.close),
                          Obscure: false,
                         validator: (val){
                           if (val != null && !val.isValidEmail) {
                             return 'Enter valid Phone Number';
                           }
                           return null;
                         },
                      ),
                       Text_Field(
                        hint_text: "Password",
                        icon: const Icon(Icons.remove_red_eye),
                          Obscure: true,
                         validator: (val){
                           if (val != null && !val.isValidEmail) {
                             return 'Enter valid Phone Number';
                           }
                           return null;
                         },

                      ),
                      const Forget_Password(),

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
                              print("test");
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff375172)),
                            ),
                            onPressed: () {
                              print("test");
                            },
                            child: const Text('Add job title',
                                style: TextStyle(color: Color(0xff375172))),
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
