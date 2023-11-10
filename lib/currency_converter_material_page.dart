
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
   const CurrencyConverterMaterialPage ({super.key}); 

  @override
  State<CurrencyConverterMaterialPage> createState() =>
  _CurrencyConverterMaterialPageState();
}




class _CurrencyConverterMaterialPageState 
    extends State<CurrencyConverterMaterialPage> { 
      double result = 0;
          final TextEditingController textEditingController = TextEditingController();

  @override 
  Widget build(BuildContext context) { 
    const border = OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40)),
                );//BuildContext is a class provided by flutter which tells where the currencyconvertermaterialpage(or any widget) is present.
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text("Currency Converter",),
        centerTitle: true,
        actions: const [],
      ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // int --> string toString()
            //string --> int.parse
            
            Text(
              "INR $result",
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1)
            )
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Please Enter the amount in USD",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                 ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            
        ),
        //button

        //raised
        //appears like a text
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(onPressed: () {
             
             setState(() {
               result = double.parse(textEditingController.text) * 83;
             });
          }, 
          style:  TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity,50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            
            ),
            
          ),
          child: const Text("Convert")
          ),
        ),
          ],
        ),),  
      );
  }
}