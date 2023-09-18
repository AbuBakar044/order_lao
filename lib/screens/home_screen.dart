import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:order_lao/screens/widgets/custom_drawer.dart';
import 'package:order_lao/screens/widgets/custom_form_field.dart';
import 'package:order_lao/screens/widgets/my_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameCtrl = TextEditingController();
  final fatherNameCtrl = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  String? name;
  String? fatherName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(text: 'Home'),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomFormField(
            controller: nameCtrl,
          ),
          CustomFormField(
            controller: fatherNameCtrl,
          ),
          TextButton(
            onPressed: () {
              saveUserData();
            },
            child: const MyText(
              text: 'Save Data',
            ),
          ),
          TextButton(
            onPressed: () {
              getUserData();
            },
            child: const MyText(
              text: 'Receive Data',
            ),
          ),
          MyText(text: 'Name'),
          MyText(text: name ?? ''),
          MyText(text: 'Father Name'),
          MyText(text: fatherName ?? ''),
        ],
      ),
    );
  }

  Future<void> saveUserData() async {
    await firestore.collection('test_user').doc(fatherNameCtrl.text).set(
      {
        'name': nameCtrl.text,
        'father_name': fatherNameCtrl.text,
      },
    );
  }
  

  Future<void> getUserData(int index) async {
    firestore.collection('test_user').get().then((value) {
      name = value.docs[index]['name'];
      fatherName = value.docs[index]['father_name'];
      setState(() {});

      print('...................${value.docs.length}');
    });
  }
}
