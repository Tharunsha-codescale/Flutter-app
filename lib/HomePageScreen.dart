// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, duplicate_ignore, unused_field, use_key_in_widget_constructors

// ignore: unnecessary_import
import 'dart:ui';

import 'package:doctor/SignInScreen.dart';
import 'package:doctor/WelcomeScreen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  List<String> _locations = ['Mr', 'Mrs', 'Miss', 'Mrs'];
  // ignore: prefer_final_fields
  String _selectedLocation = 'Please choose a Title';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 36, 60),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 80,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                // ignore: prefer_const_constructors
                //back icon
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => WelcomeScreen())));
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.black,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                //1st icon
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.black,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.sort_rounded,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                //text box
                SizedBox(
                  width: 60,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                      )
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  child: Text(
                    'My Bookings',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Expanded(child: Container()),
                //2nd icon
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SignInScreen())));
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.black,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.person_add,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //text
          SizedBox(
            height: 5,
          ),
          Text(
            'Channel your Doctor',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              padding: EdgeInsets.all(15),
              height: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Doctor-Max 20',
                      // Enabled Border
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      // Focused Border
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                      ),
                      // Error Border
                      prefixIcon: Icon(
                        Icons.health_and_safety,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Icon(Icons.h_mobiledata_outlined),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Any Hospitle',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w200),
                        ),
                        Expanded(child: Container()),
                        DropdownButton<String>(
                          items: <String>['Mr', 'Mrs', 'Miss', 'Mrs']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          focusColor: Colors.white,
                          underline: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Divider(),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Icon(Icons.local_hospital_rounded),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Any Specialization',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w200),
                        ),
                        Expanded(child: Container()),
                        DropdownButton<String>(
                          items: <String>['Mr', 'Mrs', 'Miss', 'Mrs']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          focusColor: Colors.white,
                          underline: SizedBox(),
                        ),
                      ],
                    ),
                  ),

                  Divider(),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Any Date',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //search
                  Container(
                    width: 250,
                    height: 40,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      label: Text('search'),
                      onPressed: () {
                        print('Button Pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: unnecessary_new
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //3rd section

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tablet.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Audio/Video',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Consultation',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tablet.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Medicine',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'your Doorstep',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tablet.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lab Report',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Yoru Fingertips',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tablet.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'PCR',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Test',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tablet.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Vet Care',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'by SLVA',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tablet.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Find',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'My Meds',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //4th section image slider
          SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.only(left: 22),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 120,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 290,
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/hospitle${index + 1}.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
