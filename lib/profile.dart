import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseapp/firebase_options.dart';
import 'package:firebaseapp/profileModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ProfileModel> basketitem = [];
  @override
  void initState() {
    // TODO: implement initState
    // Firebase.initializeApp();
    fetchProfile();
    super.initState();
  }

  fetchProfile() async {
    var records = await FirebaseFirestore.instance.collection('profile').get();
    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var _list = records.docs
        .map((item) => ProfileModel(
            name: item['name'], image: item['image'], desc: item['desc']))
        .toList();

    setState(() {
      basketitem = _list;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: basketitem.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(basketitem[index].name),
                Image.network(basketitem[index].image),
                Text(
                  basketitem[index].desc,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            );
          }),
    );
  }
}
