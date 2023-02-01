import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'AppBar_Icons.dart';
import 'Different_Validators.dart';
import 'Forget_password.dart';
import 'Text_Field.dart';

class Welcome_Back extends StatefulWidget {
   Welcome_Back({Key? key}) : super(key: key);

  @override
  State<Welcome_Back> createState() => Welcome_Back_State();
}

class Welcome_Back_State extends State<Welcome_Back> {
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
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, right: 10.0, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff375172),
                            fontSize: 45),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sign in to your webbat account!",
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
                        hint_text: "User ID",
                        icon: Icon(Icons.close),
                          Obscure: false
                      ),
                       Text_Field(
                        hint_text: "Company ID",
                        icon: const Icon(Icons.close),
                          Obscure: false,
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

                      Forget_Password(),

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
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {print("test");
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
