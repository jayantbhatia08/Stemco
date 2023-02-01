import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'AppBar_Icons.dart';
import 'Different_Validators.dart';
import 'Text_Field.dart';

class Phone_Verfication extends StatelessWidget {
   Phone_Verfication({Key? key}) : super(key: key);
  @override
  final _formKey = GlobalKey<FormState>();


  Widget build(BuildContext context) {
    return  Scaffold(
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
          children:<Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 40.0,right: 10.0,bottom: 5.0),
                  child: Container(
                 child: const Text("Phone Verification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff375172),
                            fontSize: 40),),
                  ),
                ),

              ],
            ),

            //Required Fields
            SingleChildScrollView(
              child: Form(
                child: Container(
                  key: _formKey,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2,
                      left: 50,
                      right: 50),
                  child: Column(
                    children:  <Widget>[
                       Text_Field(
                        hint_text: "Phone Number",
                        icon: Icon(Icons.close),
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

                      const SizedBox(height: 20),

                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff375172),
                      ),
                      child:  Center(
                        child:  TextButton(
                          child: const Text("Next",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),onPressed: () {print("test");},),
                      ),
                    ),

                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(top: 20.0,left: 10,right: 10),
                          child: Text('We need to verify your phone to procced.',
                              style:
                              TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff375172))),
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
