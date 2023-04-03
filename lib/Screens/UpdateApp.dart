import 'package:flutter/material.dart';

import '../Models/AppSettings.dart';

class UpdateApp extends StatelessWidget {
  const UpdateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppSettings.dark? const Color(0xff0D0D0D) : const Color(0xffF5F6FF),
      body: Column(
        children: [
          Text(
            "Veulliez mettre à jour votre application , ya une version plus récente Merci ",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppSettings.dark ? Colors.white : Colors.black,
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: 100,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: ElevatedButton(
              onPressed: () {

              },
              child: const Text('Update'),

            ),
          )
        ],
      ),
    );
  }
}
