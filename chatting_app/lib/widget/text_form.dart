import 'package:chatting_app/config/palette.dart';
import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  TextFormWidget({
    Key? key,
    required this.isChecked,
    required this.isName,
    required this.isEmail,
    required this.isPassword,
    required this.tryValid,
  }) : super(key: key);

  bool isChecked;
  final _formKey = GlobalKey<FormState>();
  String isName;
  String isEmail;
  String isPassword;
  final Function() tryValid;
  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      top: 180,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        height: widget.isChecked ? 280 : 250,
        width: MediaQuery.of(context).size.width - 40,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,
              spreadRadius: 5,
            )
          ],
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.isChecked = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            color: !widget.isChecked
                                ? Palette.activeColor
                                : Palette.textColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        if (!widget.isChecked)
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.orange,
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.isChecked = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'SIGNUP',
                          style: TextStyle(
                            color: widget.isChecked
                                ? Palette.activeColor
                                : Palette.textColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        if (widget.isChecked)
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.orange,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              if (widget.isChecked)
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Form(
                    key: widget._formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          key: ValueKey(1),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 4) {
                              return 'Please enter at leat 4 characters';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            widget.isName = value!;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Palette.iconColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Palette.textColor1,
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          key: ValueKey(2),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Please enter a valid email address.';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            widget.isEmail = value!;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Palette.iconColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Palette.textColor1,
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          key: ValueKey(3),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'Pssword must be at least 7 characters long.';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            widget.isPassword = value!;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Palette.iconColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Palette.textColor1,
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (!widget.isChecked)
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Form(
                    key: widget._formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty || value.length < 4) {
                              return 'Please enter at leat 4 characters';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            widget.isName = value!;
                          },
                          key: ValueKey(4),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Palette.iconColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Palette.textColor1,
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          key: ValueKey(5),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'Please must be at least 7 characters long';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            widget.isPassword = value!;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Palette.iconColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.textColor1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35),
                              ),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Palette.textColor1,
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
