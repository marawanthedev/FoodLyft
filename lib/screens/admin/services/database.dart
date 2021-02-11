import 'dart:io';
import 'package:path/path.dart' as Path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Database {
  uploadResturantImage(File img) async {
    return await FirebaseStorage.instance
        .ref()
        .child("Restaurant Image")
        .child('image/${Path.basename(img.path)}')
        .putFile(img);
  }

  Future uploadRestaurentInfo(resMap) async {
    return await FirebaseFirestore.instance
        .collection("Admin")
        .doc(Timestamp.now().toString())
        .set(resMap);
  }

  getAdminData() async {
    return FirebaseFirestore.instance.collection("Admin").snapshots();
  }

  Future updateRestaurentInfo(data) async {
    return await FirebaseFirestore.instance
        .collection("Admin")
        .doc(Timestamp.now().toString())
        .update(data);
  }
}
