import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CountryCodePickerPage extends StatefulWidget {
  @override
  _CountryCodePickerPageState createState() => _CountryCodePickerPageState();
}

class _CountryCodePickerPageState extends State<CountryCodePickerPage> {
  String _selectedCountryCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Code Picker'),
      ),
      body: Center(
        child: CountryCodePicker(
          onChanged: (countryCode) {
            setState(() {
              _selectedCountryCode = countryCode.dialCode!;
            });
          },
          initialSelection: 'KE',
          favorite: const ['+254', 'KE'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Selected Country Code: $_selectedCountryCode'),
        ),
      ),
    );
  }
}
