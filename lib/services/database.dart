import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

   getQuestionData() async{
    return FirebaseFirestore.instance.collection("QNA").doc();

  }
}