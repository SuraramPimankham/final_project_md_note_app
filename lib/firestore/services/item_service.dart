import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:final_project_md/firestore/models/item.dart';
import 'package:final_project_md/firestore/screens/item_detail_screen.dart';

class ItemService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionName = 'items';

  Stream<List<Item>> get itemsStream {
    final StreamController<List<Item>> streamController =
        StreamController<List<Item>>();
    final CollectionReference collectionReference =
        _db.collection(_collectionName);

    collectionReference.snapshots().listen((QuerySnapshot snapshot) {
      final List<Item> items =
          snapshot.docs.map((doc) => Item.fromSnapshot(doc)).toList();
      streamController.add(items);
    });

    return streamController.stream;
  }

  Future<void> addItem(String itemTitle, String itemDescription) {
    Map<String, String> data = {
      "title": itemTitle,
      "description": itemDescription,
    };
    return FirebaseFirestore.instance
        .collection("items")
        .add(data)
        .then((value) {
      print("Item created");
    }).catchError((error) {
      print("Can't create item:" + error.toString());
    });
  }

  Future<void> editItem(Item item) async {
    await FirebaseFirestore.instance
        .collection('items')
        .doc(item.id)
        .update(item.toMap());
  }

  Future<void> updateItem(String documentId, Map<String, dynamic> data) {
    return FirebaseFirestore.instance
        .collection("items")
        .doc(documentId)
        .update(data);
  }

  Future<void> deleteItem(String documentid) {
    return FirebaseFirestore.instance
        .collection("items")
        .doc(documentid)
        .delete()
        .then((value) {
      print("Item deleted");
    }).catchError((error) {
      print("Can't delete item:" + error.toString());
    });
  }
}
