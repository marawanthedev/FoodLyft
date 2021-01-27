import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  // Firestore firestore = Firestore.instance;
  static final FirebaseService _instance = FirebaseService._constructor();

  factory FirebaseService() {
    return _instance;
  }
  FirebaseService._constructor();

  Future get({String collection, String documentId}) async {
    print("gettig");
    if (collection != null) {
      CollectionReference collectionReference =
          Firestore.instance.collection(collection);

      if (documentId != null) {
        var snapshot = await collectionReference.document(documentId).get();
        var data = snapshot.data;
        if (data != null) {
          print(data);
          // return data;
        }
      } else {
        // getting all documents within a collection
        var snapshot = await collectionReference.getDocuments();
        var dataMap = snapshot.documents.map((document) {
          var documentData = document.data;
          documentData['id'] = document.documentID;
          return documentData;
        }).toList();

        print(dataMap);
        // return dataMap;
      }
    }
  }

  Future post({String collection, dynamic data}) async {
    if (collection != null && data != null) {
      return await Firestore.instance.collection(collection).document().setData(data);
    }
  }

  Future patch({String collection, documentId, dynamic data}) async {
    if (collection != null && data != null) {
     return await Firestore.instance
          .collection(collection)
          .document(documentId)
          .updateData(data);
    }
  }

  Future delete({String collection, documentId}) async {
    if (collection != null && documentId != null) {
      return await Firestore.instance.collection(collection).document(documentId).delete();
    }
  }
}
