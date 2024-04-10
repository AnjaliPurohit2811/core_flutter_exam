import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

class AddDetail extends StatefulWidget {
  const AddDetail({super.key});

  @override
  State<AddDetail> createState() => _AddDetailState();
}

class _AddDetailState extends State<AddDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff070F2B),
        title: Text(
          'Add Details',
          style: TextStyle(
              color: Colors.grey.shade200, fontSize: 25, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20 , right: 100),
            child: Text('Details Of Student : ' , style: TextStyle(color: Color(0xff070F2B) , fontSize: 30 , fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20 , left: 50),
            child: InkWell(
              onTap: () {
                
              },
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('asset/img/1.jpg'),

              ),
            ),
          ),
          Form(
              child: Padding(
                padding: const EdgeInsets.only(top: 30 , left: 50),
                child: Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Student's Name",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.black,width: 4))
                            ),
                          ),
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30 , left: 50),
            child: Container(
              height: 60,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Student's Grid",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.black,width: 4))
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30 , left: 50),
            child: Container(
              height: 60,
              width: 350,
              child: TextFormField(

                decoration: InputDecoration(
                    hintText: "Student's Standard",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.black,width: 4))
                ),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 50 , left: 45),
          child: InkWell(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('/home');
              });
            },
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff070F2B),
                borderRadius: BorderRadius.only(topRight: Radius.circular(25) , bottomLeft: Radius.circular(25)),
              ),
              child: Center(child: Text('Submit' , style: TextStyle(color: Colors.grey.shade200 , fontSize: 30 , fontWeight: FontWeight.bold),)),
            ),
          ),
        )],
        
      ),
    );
  }
}

final ImagePicker imagePicker = ImagePicker();

TextEditingController txtname = TextEditingController();
TextEditingController txtstd = TextEditingController();
TextEditingController txtgrid = TextEditingController();
String name = '';
String std = '';
String grid = '';


