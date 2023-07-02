import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Wallet")),
      ),
      body: Column(
        children: [
          const SizedBox(
            height:30 ,
          ),
          const Icon(Icons.lock_open_sharp,size:200,),
          const SizedBox(
            height:20 ,
          ),
          const Center(child: Text("Enter your 8 digit pin code!")),

          const SizedBox(
            height:50 ,
          ),
          PinCodeTextField(
            appContext: context,
            pastedTextStyle: TextStyle(
              color: Colors.green.shade600,
              fontWeight: FontWeight.bold,
            ),
            length: 8,
            obscureText: true,
            obscuringCharacter: '*',
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 50,
              activeFillColor: Colors.purple,
            ),
          ),
         const SizedBox(
           height: 20,
         ),
         Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15.0),
                 color: Colors.purple,
               ),

               height: 60,
               width: 390,
               child: const Center(child: Text("Proceed",style: TextStyle(
                 color: Colors.white,),),
             ),
           ),
         ),
         ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.purple,
                ),

                height: 60,
                width: 390,
                child: const Center(child: Text("Forgot Pin",style: TextStyle(
                  color: Colors.white,),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
