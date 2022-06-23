import 'dart:convert';
import 'package:book_app/screens/home/home_screen.dart';
import 'package:book_app/services/globals.dart';
import 'package:http/http.dart' as http;

import 'package:book_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:book_app/components/custom_surfix_icon.dart';
import 'package:book_app/components/default_button.dart';
import 'package:book_app/components/form_error.dart';
import 'package:book_app/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String _email = '';
  String _password = '';

  createAccountPressed() async {
    bool emailValid = RegExp('').hasMatch(_email);
    if (emailValid) {
      http.Response response = await AuthServices.register(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen(),
            ));
      } else {
        // var responseMap;
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'email tidak valid');
    }
  }

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildConformPassFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Lanjutkan",
            press: () => createAccountPressed(),
          ),
        ],
      ),
    );
  }

  // TextFormField buildConformPassFormField() {
  //   return TextFormField(
  //     obscureText: true,
  //     onSaved: (newValue) => conform_password = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kPassNullError);
  //       } else if (value.isNotEmpty && password == conform_password) {
  //         removeError(error: kMatchPassError);
  //       }
  //       conform_password = value;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         addError(error: kPassNullError);
  //         return "";
  //       } else if ((password != value)) {
  //         addError(error: kMatchPassError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Confirm Password",
  //       hintText: "Masukkan kembali kata sandi anda",
  //       // If  you are using latest version of flutter then lable text and hint text shown like this
  //       // if you r using flutter less then 1.20.* then maybe this is not working properly
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
  //     ),
  //   );
  // }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onChanged: (value) {
        _password = value;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukan kata sandi anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        _email = value;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Masukan email anda",

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
