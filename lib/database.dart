import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('cars');

class Database {
  static String? userUid;

  static Future<void> addCar(
      {required String model,
      required String carNumber,
      required String aadharCard,
      required double pricePerDay}) async {
    DocumentReference documentReferencer = _mainCollection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "model": model,
      "price_per_day": pricePerDay,
      "car_number": carNumber,
      "aadhar_card": aadharCard,
      "owner_id": FirebaseAuth.instance.currentUser!.uid
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Notes item added to the database"))
        .catchError((e) => print(e));
  }

  static Future readCars() async {
    QuerySnapshot querySnapshot = await _mainCollection.get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    return allData;
  }

  static Stream<QuerySnapshot> readUserCars(String userId) {
    return _mainCollection
        .where("user_id", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots();
  }
}
