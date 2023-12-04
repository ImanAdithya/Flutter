import 'package:flutter/material.dart';

class PractiseForm extends StatefulWidget {
  @override
  State<PractiseForm> createState() => _PractiseFormState();
}

class _PractiseFormState extends State<PractiseForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<
      FormState>(); //globls key use to craate  keys use generice to define is it formKey
  String _name = "";

  Widget _buildNameFeild() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Name"),
      maxLength: 20,
      maxLines: 1,
      //give space
      validator: (text) {
        if (text?.isEmpty ?? true) {
          return "Name cannot be null..";
        }
        return null;
      },
      onSaved: (text) {
        _name = text!;
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
                _buildNameFeild(),
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
                      print(_name);
                      print("pressed");
                    }
                  },
                  child: Text('TextButton'),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
