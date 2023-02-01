import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Different_Validators.dart';
import 'Text_Field.dart';

class Create_Company extends StatefulWidget {
   Create_Company({Key? key}) : super(key: key);

  @override
  State<Create_Company> createState() => Create_CompanyState();
}

class Create_CompanyState extends State<Create_Company> {
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

        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 300,),
              IconButton(
                onPressed: (){
                  print("test");
                } ,
                icon: const Padding(
                  padding: EdgeInsets.only(right: 200.0, bottom: 20),
                  child: Icon(Icons.help,color: Colors.blue,),
                ),
              ),
            ],
          ),
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
                        "Create Company",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff375172),
                            fontSize: 40),
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
                      top: MediaQuery.of(context).size.height * 0.1,
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
                        hint_text: "First Name",
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
                        hint_text: "Last Name",
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
                        hint_text: "Job Title",
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
                       const Text_Field(
                        hint_text: "Address",
                        icon: Icon(Icons.close),
                          Obscure: false,
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
