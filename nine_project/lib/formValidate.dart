import 'package:flutter/material.dart';

class FormValidate extends StatefulWidget {
  @override
  State<FormValidate> createState() => _FormValidate();
}

class _FormValidate extends State<FormValidate> {
  final GlobalKey<FormState> _formKey = GlobalKey<
      FormState>(); //globls key use to craate  keys use generice to define is it formKey
  String _name = "";
  String _email = "";
  String _password = "";
  String _mobile = "";

  Widget _buildNameFeild() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Name"),
      maxLength: 20,
      maxLines: 1,
      //give space
      validator: (text) {
       return ValidateHelper.nameValidator(text!);
      },
      onSaved: (text) {
        _name = text!;
      },
    );
  }

  Widget _buildEmailFeild() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Email"),
      maxLength: 20,
      maxLines: 1,
      //give space
      validator: (text) {
        if (text?.isEmpty ?? true) {
          return "Email cannot be null..";
        }
        return null;
      },
      onSaved: (text) {
        _email = text!;
      },
    );
  }

  Widget _buildPasswordFeild() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Password"),
      keyboardType: TextInputType.number,
      maxLength: 20,
      maxLines: 1,
      //give space
      validator: (text) {
        if (text?.isEmpty ?? true) {
          return "Password cannot be null..";
        }
        return null;
      },
      onSaved: (text) {
        _password = text!;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Mobile"),
      keyboardType: TextInputType.number,
      maxLength: 20,
      maxLines: 1,
      //give space
      validator: (text) {
        if (text?.isEmpty ?? true) {
          return "mobile cannot be null..";
        }
        return null;
      },
      onSaved: (text) {
        _mobile = text!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "FORM",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        //can scroll dont overflow in bottom
        child: Form(
          key: _formKey, //to define form key
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: _buildNameFeild(),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: _buildEmailFeild(),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: _buildPasswordFeild(),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: _buildPhoneNumber(),
                ),
                const SizedBox(
                  //get bottom space
                  height: 50.0,
                ),
                Container(
                    child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      print("VALID FORM");
                    } else {
                      print("NOT VALID FORM");
                    }
                  },
                  child: Text('SUBMIT'),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ValidateHelper {
  static String? nameValidator(String value) {
    if(value.isEmpty){
      return "name cannot be empty";
    }
    if(value.length<2){
      return "name must be at least 2 character long";
    }
    if(value.length>50){
      return "name must be at less than 50 character long";
    }
    return null;
  }
}
