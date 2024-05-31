import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({Key? key}) : super(key: key);

  @override
  State<SignUpPage1> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage1> {
  bool _isObscure = true;
  bool _isChecked = false; // State for the checkbox
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String initialCountry = 'KE';
  PhoneNumber number = PhoneNumber(isoCode: 'KE');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Mama',
                          style: TextStyle(
                            color: Color(0xFFE07C24),
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            // child: Image.asset(
                            //   'images/logo1.jpg',
                            //   width: 44.0,
                            //   height: 22.0,
                            // ),
                          ),
                        ),
                        const TextSpan(
                          text: 'Pesa',
                          style: TextStyle(
                            color: Color(0xFF59190B),
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Access loans and finances with ease',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 1, 1),
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 48.0),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Full name as per ID',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Date of birth',
                        hintText: 'dd/mm/year',
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800),
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800)),
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'ID Number',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16.0),
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      showFlags: true,
                      // initialSelection: 'KE',
                      setSelectorButtonAsPrefixIcon: true,
                      useEmoji: true,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    initialValue: number,
                    textFieldController: _phoneController,
                    formatInput: true,
                    inputDecoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    inputBorder: const OutlineInputBorder(),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                 const SizedBox(height: 16.0),  
                  const CountryCodePicker(
         onChanged: print,
         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
         initialSelection: 'IT',
         favorite: ['+39','FR'],
         // optional. Shows only country name and flag
         showCountryOnly: false,
         // optional. Shows only country name and flag when popup is closed.
         showOnlyCountryWhenClosed: false,
         // optional. aligns the flag and the Text left
         alignLeft: false,
       ),
     
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'abcy@gmail.com',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: const OutlineInputBorder(),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      GestureDetector(

                        onTap: () {
                          setState(() {
                            _isChecked = !_isChecked;
                          });
                        },
                        child: const Text('I agree to Terms & Conditions',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900)),
                              

                      ),

                    ],
                  ),
                  const SizedBox(height: 0.0),
                  ElevatedButton(
                    onPressed: _isChecked
                        ? () {
                            // Navigate to the HomePage if terms are agreed to
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const Wid()),
                            // );
                          }
                        : null, // Button is disabled if terms are not agreed to
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6F2B2D),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  const SizedBox(height: 0.0),
                  // TextButton(
                  //   // onPressed: () {
                  //   //   // Navigate to the LoginPage
                  //   //   Navigator.pushReplacement(
                  //   //     context,
                  //   //     MaterialPageRoute(builder: (context) => const LoginPage()),
                  //   //   );
                  //   // },
                  //   child: const Text(
                  //     "Already have an account? Login",
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w900,fontSize: 15)
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
