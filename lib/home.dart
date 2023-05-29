import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pincode TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PinCodeTextField(
                appContext: (context),
                length: 4,
                keyboardType: TextInputType.number,
                cursorColor: Colors.deepPurple,
                obscureText: true,
                obscuringCharacter: '@',
                enabled: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldWidth: 50,
                  fieldHeight: 40,

                  selectedColor: Colors.deepPurple,
                  selectedFillColor: Colors.orange,
                  inactiveColor: Colors.red,
                  activeColor: Colors.green,
                  activeFillColor: Colors.red,
                ),

                onChanged: (value) {

                }
            )
          ],
        ),
      ),
    );
  }
}
