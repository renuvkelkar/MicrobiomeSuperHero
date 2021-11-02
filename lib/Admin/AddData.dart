import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class AddData extends StatefulWidget {
  // const AddData({Key key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  final ref = FirebaseFirestore.instance.collection("FlashCard");
  final _formKey = GlobalKey<FormState>();
  TextEditingController cat_idcontroller = TextEditingController();
  TextEditingController caloriescontroller = TextEditingController();
  TextEditingController cat_namecontroller = TextEditingController();
  TextEditingController health_benifitscontroller = TextEditingController();
  TextEditingController colorcontroller = TextEditingController();
  TextEditingController f_desccontroller = TextEditingController();
  TextEditingController f_img_backcontroller = TextEditingController();
  TextEditingController f_img_frontcontroller = TextEditingController();
  TextEditingController intresting_factscontroller = TextEditingController();
  TextEditingController protein_countcontroller = TextEditingController();
  TextEditingController tastecontroller = TextEditingController();
  // TextEditingController vitaminscontroller = TextEditingController();
  TextEditingController vitamincontroller = TextEditingController();
  TextEditingController fatscontroller = TextEditingController();
  TextEditingController footerimgcontroller = TextEditingController();
  TextEditingController f_namecontroller = TextEditingController();
  TextEditingController fibre_countcontroller = TextEditingController();
  late Map<String, dynamic> addToCard;

  addData() {
    addToCard = {
      'cat_id': cat_idcontroller.text,
      'calories': caloriescontroller.text,
      'f_img_back': f_img_backcontroller.text,
      'health_benefits': health_benifitscontroller.text.split(","),
      'color': colorcontroller.text,
      'f_desc': f_desccontroller.text,
      'cat_name': cat_namecontroller.text,
      'f_img_front': f_img_frontcontroller.text,
      'f_name': f_namecontroller.text,
      'fibre_count': fibre_countcontroller.text,
      'intresting_facts': intresting_factscontroller.text.split(","),
      'protein_count': protein_countcontroller.text,
      'taste': tastecontroller.text,
      // 'vitamins': vitaminscontroller.text.split(","),
      'vitamin': vitamincontroller.text,
      'fats': fatscontroller.text,
      'footer_img': footerimgcontroller.text,
    }; //day2
    ref.add(addToCard).whenComplete(() => Navigator.pop(context));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      body:  Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          TextFormField(
                            controller: cat_idcontroller,
                            decoration: InputDecoration(
                                labelText: 'cat_id',
                                hintText: 'Enter cat_id'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),

                          TextFormField(
                            controller: cat_namecontroller,
                            decoration: InputDecoration(
                                labelText: 'cat_name',
                                hintText: 'Enter cat_name'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: caloriescontroller,
                            decoration: InputDecoration(
                                labelText: 'calories',
                                hintText: 'Enter calories'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: colorcontroller,
                            decoration: InputDecoration(
                                labelText: 'color',
                                hintText: 'Enter color'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: f_namecontroller,
                            decoration: InputDecoration(
                                labelText: 'f_name',
                                hintText: 'Enter f_desc'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller:  fibre_countcontroller,
                            decoration: InputDecoration(
                                labelText: 'fiber_count',
                                hintText: 'Enter f_desc'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: f_desccontroller,
                            decoration: InputDecoration(
                                labelText: 'f_desc',
                                hintText: 'Enter f_desc'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: f_img_backcontroller,
                            decoration: InputDecoration(
                                labelText: 'f_img_back',
                                hintText: 'Insert Image'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: f_img_frontcontroller,
                            decoration: InputDecoration(
                                labelText: 'f_img_front',
                                hintText: 'Insert Image'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: health_benifitscontroller,
                            decoration: InputDecoration(
                                labelText: 'health_benifits',
                                hintText: 'Enter health_benifits'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: intresting_factscontroller,
                            decoration: InputDecoration(
                                labelText: 'intresting_facts',
                                hintText: 'Enter intresting_facts'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: protein_countcontroller,
                            decoration: InputDecoration(
                                labelText: 'protein_count',
                                hintText: 'Enter protein_count'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: tastecontroller,
                            decoration: InputDecoration(
                                labelText: 'taste',
                                hintText: 'Enter taste'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          // TextFormField(
                          //   controller: vitaminscontroller,
                          //   decoration: InputDecoration(
                          //       labelText: 'vitamins',
                          //       hintText: 'Enter vitamins'),
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontWeight: FontWeight.w500,
                          //     color: Colors.black,
                          //   ),
                          // ),
                          TextFormField(
                            controller: vitamincontroller,
                            decoration: InputDecoration(
                                labelText: 'vitamin',
                                hintText: 'Enter vitamin'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: fatscontroller,
                            decoration: InputDecoration(
                                labelText: 'fats',
                                hintText: 'Enter fats'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: footerimgcontroller,
                            decoration: InputDecoration(
                                labelText: 'footer_img',
                                hintText: 'Enter footer_img'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            color: Colors.red,
                            child: TextButton(
                              onPressed: () {
                                 addData();
                              },
                              child: Text(
                                'submit',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ]
                    ),
                  )

              )
            ],
          )
      ),
    );
  }
}
