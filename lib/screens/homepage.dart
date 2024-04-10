import 'package:core_flutter_exam/screens/updatepage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:core_flutter_exam/utils/globallist.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff070F2B ),
        title: Text('HomePage' , style: TextStyle(color: Colors.grey.shade200 , fontSize: 25 , fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: List.generate(Studentlist.length, (index) => buildcolm(context)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50 , left: 350),
            child: FloatingActionButton(onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('/add');
              });
            },child: Icon(Icons.add , size: 35,),),
          )
        ],
      ),
    );
  }

  Column buildcolm(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30 , left: 40),
          child: InkWell(
            onTap: () {

            },
            child: Container(
              height: 100,
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff070F2B) ,
                width: 3 ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(25) , bottomLeft: Radius.circular(25))
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('asset/img/1.jpg'),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(Studentlist[1]['name'] , style: TextStyle(color: Color(0xff070F2B) , fontSize: 25),),
                  SizedBox(width: 5,),
                  Text(Studentlist[1]['grid'] , style: TextStyle(color: Color(0xff070F2B) , fontSize: 20), ),
                  SizedBox(width: 50,),
                  InkWell(
                    onTap: () {
                      setState(() {
                         Navigator.of(context).pushNamed('/upd');
                      });
                    },
                      child: Icon(Icons.edit , size: 30,)),
                  SizedBox(width: 20,),
                  Icon(Icons.delete , size: 30,)
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}




