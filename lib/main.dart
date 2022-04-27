import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(Main());

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  static final colorWhite = Color(0xFF4376FE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: colorBlue,
      //   splashColor: Color.fromARGB(255, 82, 128, 255),
      //   onPressed: () {},
      //   label: Text('Add Product'),
      //   icon: Icon(Icons.add),
      // ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        title: Text(
          'Add Product',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Color(0xFFFAB40),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Product Information',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Divider(
                  height: 15,
                  color: Colors.white,
                ),
                SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Image Product'),
                      SizedBox(height: 9),
                      Container(
                        width: double.infinity,
                        height: 175,
                        decoration: BoxDecoration(color: Color(0xFFF8A65), border: Border.all(width: 4, color: Colors.deepOrange), borderRadius: BorderRadius.circular(9)),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.orangeAccent,
                            size: 29,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name'),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'Sweater Wanita', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product ID'),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'ID-001', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price'),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'Rp.80.000,00', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Stock'),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: '102', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description'),
                      SizedBox(height: 8),
                      TextField(
                        maxLines: 6,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'Enter a description...', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 80.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Low Stock Warning',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        'Change Value to 0 for disable low stock warning',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        height: 5,
                        color: Color.fromARGB(255, 203, 203, 203),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: colorWhite, width: 2)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: '10', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: double.infinity,
        height: 76,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.orangeAccent,
                  blurRadius: 25,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextButton(
              style: TextButton.styleFrom(shadowColor: Colors.orangeAccent, backgroundColor: Colors.orangeAccent, primary: Colors.white, shape: StadiumBorder()),
              onPressed: () => {},
              child: Text(
                'Add Product',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
