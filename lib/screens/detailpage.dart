import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff070F2B),
        title: Text('Update Dialog' , style: TextStyle(color: Colors.grey.shade200 , fontSize: 25 , fontWeight: FontWeight.w600)  ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30 , left: 50),
            child: Container(
              height: 60,
              width: 350,
              child: TextFormField(

                decoration: InputDecoration(
                    hintText: "name",
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
                    hintText: "grid",
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
                    hintText: "std",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.black,width: 4))
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 40),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('/');
                });
              },
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff070F2B),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) , topRight: Radius.circular(25))
                ),
                child: Center(child: Text('Update' , style: TextStyle(color: Colors.grey.shade200 , fontSize: 30),)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20 , left: 40),
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xff070F2B),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) , topRight: Radius.circular(25))
              ),
              child: Center(child: Text('cancel' , style: TextStyle(color: Colors.grey.shade200 , fontSize: 30),)),
            ),
          )
        ],
      ),
    );
  }
}
