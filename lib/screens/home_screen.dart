import 'package:flutter/material.dart';
import 'package:invoice_app/resource/color_manager.dart';
import 'package:invoice_app/widget/company_add.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          CompanyAdd(),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
            height: 10,
            //color: Colors.black,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return Text(
                    'data',
                    style: TextStyle(fontSize: 20),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
