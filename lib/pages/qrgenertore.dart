import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


void myqrgen(BuildContext context,String data,String title) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(30),
        title: Center(child: Text(title.toString(),style: TextStyle(fontSize: 35),),),
        content:
        Container(
          height:230,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  //showing qr code
                  child: QrImageView(
                    size: 200,
                    data: data.toString(),
                    version: QrVersions.auto,
                  ),
                ),
              ),
              Container(
                  height:20,
                  child: Text(data,style: TextStyle(
                    fontSize: 20,
                  ),)),
            ],
          ),
        ),
        actions: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("cancel")),
          )
        ],// Replace with the actual asset image path
      );
    },
  );
}