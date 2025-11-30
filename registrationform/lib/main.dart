import 'package:flutter/material.dart';

void
main(
  List<
    String
  >
  args,
) {
  runApp(
    MyApp(),
  );
}

class MyApp
    extends
        StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<
    MyApp
  >
  createState() => _MyAppState();
}

class _MyAppState
    extends
        State<
          MyApp
        > {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm
    extends
        StatefulWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  State<
    RegistrationForm
  >
  createState() => _RegistrationFormState();
}

class _RegistrationFormState
    extends
        State<
          RegistrationForm
        > {
  bool isChecked = false;
  String? dropdownvalue;
  final _formKey =
      GlobalKey<
        FormState
      >();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final countryList = [
    "Brazil",
    "China",
    "India",
    "Japan",
    "Saudi Arabia",
    "Portugal",
    "United Arab Emirates",
  ];
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            15.0,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PayPal Registration",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Sign up for a new PayPal account.",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            TextFormField(
                              controller: _firstNameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter your first Name",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              validator:
                                  (
                                    value,
                                  ) {
                                    if (value ==
                                            null ||
                                        value.trim().isEmpty) {
                                      return "* First name is required";
                                    }
                                    if (!RegExp(
                                      r'^[a-zA-Z]+$',
                                    ).hasMatch(
                                      value,
                                    )) {
                                      return "* Only alphabets allowed";
                                    }
                                    return null;
                                  },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            TextFormField(
                              controller: _lastNameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter your last Name",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              validator:
                                  (
                                    value,
                                  ) {
                                    if (value ==
                                            null ||
                                        value.trim().isEmpty) {
                                      return "* Last name is required";
                                    }
                                    if (!RegExp(
                                      r'^[a-zA-Z]+$',
                                    ).hasMatch(
                                      value,
                                    )) {
                                      return "* Only alphabets allowed";
                                    }
                                    return null;
                                  },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Email Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    validator:
                        (
                          value,
                        ) {
                          if (value ==
                                  null ||
                              value.trim().isEmpty) {
                            return "* Email is required";
                          }
                          if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(
                            value,
                          )) {
                            return "* Enter a valid email";
                          }
                          return null;
                        },
                  ),
                  Text(
                    "Choose a username",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Create a Username",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your phone number",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    validator:
                        (
                          value,
                        ) {
                          if (value ==
                                  null ||
                              value.trim().isEmpty) {
                            return "* Phone number is required";
                          }
                          if (!RegExp(
                            r'^\d{10,12}$',
                          ).hasMatch(
                            value,
                          )) {
                            return "* Enter a valid phone number";
                          }
                          return null;
                        },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date of Birth",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              controller: _dobController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD.MM.YY",
                                suffixIcon: Icon(
                                  Icons.calendar_today,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime(
                                    2000,
                                  ),
                                  firstDate: DateTime(
                                    1900,
                                  ),
                                  lastDate: DateTime.now(),
                                );
                                if (pickedDate !=
                                    null) {
                                  String formattedDate = "${pickedDate.day.toString().padLeft(2, '0')}.${pickedDate.month.toString().padLeft(2, '0')}.${pickedDate.year}";
                                  setState(
                                    () {
                                      _dobController.text = formattedDate;
                                    },
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Country/Region",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),

                            DropdownButtonFormField<
                              String
                            >(
                              hint: Text(
                                "Select your Country",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 13,
                                  horizontal: 10.2,
                                ),
                              ),
                              isExpanded: true,
                              initialValue: dropdownvalue,
                              iconSize: 30,
                              items: countryList.map(
                                (
                                  country,
                                ) {
                                  return DropdownMenuItem<
                                    String
                                  >(
                                    value: country,
                                    child: Text(
                                      country,
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged:
                                  (
                                    value,
                                  ) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Create a password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                      helperText: "Minimum 8 characters with a number and a letter",
                    ),
                  ),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Re-enter your password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged:
                            (
                              value,
                            ) {
                              setState(
                                () {
                                  isChecked = value!;
                                },
                              );
                            },
                        fillColor:
                            WidgetStateProperty.resolveWith<
                              Color
                            >(
                              (
                                states,
                              ) {
                                return Colors.grey.shade300;
                              },
                            ),

                        side: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        checkColor: Colors.black,
                      ),
                      Expanded(
                        child: Text(
                          "I agree to the Terms and Conditions and acknowledge the Privacy Policy.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (!isChecked) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "You must agree to the Terms & Conditions",
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }

                        if (_formKey.currentState!.validate()) {
                          print(
                            "FIRST NAME: ${_firstNameController.text}",
                          );
                          print(
                            "LAST NAME: ${_lastNameController.text}",
                          );
                          print(
                            "EMAIL: ${_emailController.text}",
                          );
                          print(
                            "PHONE: ${_phoneController.text}",
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(
                          0xFF0063CD,
                        ),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text(
                        "Register",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
