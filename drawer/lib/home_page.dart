import 'package:drawer/complete_drawer.dart';
import 'package:drawer/drawer.dart';
import 'package:drawer/my_drawer_header.dart';
import 'package:drawer/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  const CDrawer(),
                ],
              ),
            ),
          ),
        ),
        endDrawer: MyDrawer(),
        key: _scaffoldKey,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.menu)),
          ],
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomeTextField(
                  controller: emailController,
                  hintText: "Enter your Email",
                  labelText: "Enter your Email",
                  keyboardType: TextInputType.emailAddress,
                  Prefixicon: Icons.email,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }

                    // using regular expression
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Please enter a valid email address";
                    }

                    // the email is valid
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is empty";
                    }
                    if (value.length < 4) {
                      return "Password is too short";
                    }
                    if (value.length > 10) {
                      return "Password is too long";
                    }
                  },
                  maxLines: 1,
                  obscureText: isObsecure,
                  obscuringCharacter: "*",
                  controller: passwordController,
                  decoration: InputDecoration(
                    //prefix: Icon(Icons.email),

                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(isObsecure == false
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    fillColor: Colors.blue[100],
                    filled: true,
                    hintText: "Enter your password",
                    labelText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.red),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 86, 244, 54))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page2()));
                      } else {
                        print("Something is wrong");
                      }
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isObsecure = false;
}

class CustomeTextField extends StatelessWidget {
  CustomeTextField(
      {this.hintText,
      this.keyboardType,
      this.controller,
      this.labelText,
      this.validator,
      this.Prefixicon});

  TextEditingController? controller;
  String? hintText, labelText;
  IconData? Prefixicon;
  dynamic? validator;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        //prefix: Icon(Icons.email),
        //  prefixIcon: Icon(Icons.email),

        suffixIcon: Icon(Prefixicon),
        fillColor: Colors.blue[100],
        filled: true,
        hintText: "$hintText",
        labelText: "$labelText",
        hintStyle: TextStyle(color: Colors.red),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color.fromARGB(255, 86, 244, 54))),
      ),
    );
  }
}
