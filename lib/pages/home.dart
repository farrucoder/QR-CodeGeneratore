import 'package:flutter/material.dart';
import 'package:qrcodegeneratore/pages/qrgenertore.dart';

class myhome extends StatelessWidget {

  //data  and title conroller
  final data = TextEditingController();
  final title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading  and LOGO
            Icon(Icons.qr_code,size: 100,),

            SizedBox(height: 10,),
            Text('QR Code Generatore',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
              ),),

            SizedBox(height: 50,),
            //Title Text
            Container(
              height: 40,
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                ),
              ),

              child: TextField(
                controller: title,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Title like web,number etc.',
                  suffix: GestureDetector(
                    onTap: (){
                      //clear the tap
                      title.clear();
                    },
                    child: Icon(Icons.clear),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            // Input Data
            Container(
              height: 40,
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                ),
              ),

              child: TextField(
                controller: data,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type Something',
                  suffix: GestureDetector(
                    onTap: (){
                      //clear the tap
                      data.clear();
                    },
                    child: Icon(Icons.clear),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            // Submit or Generate Button
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black54,
                border: Border.all(
                  color:Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(child: GestureDetector(
                onTap: (){
                  //Pass the data to generatore
                 if(data.text != '' && title.text != ''){ myqrgen(context,data.text,title.text);}
                },
                child: Text('Generate QR',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              ),
            ),

            // Use case.
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('U s e  C a s e s',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),

                Text('\n-> When someone want to convert it\'s data into qr code\n-> Like phone number,UPI ID,Whatsapp Number,Website links etc.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey[600]
                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}



