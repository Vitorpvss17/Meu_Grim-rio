import 'dart:convert';

import 'google_book.dart';

class PersonalBook {
  int? id;

  String dayStarted;
  String dayFinished;
  String comments;
  GoogleBook googleBook;

  PersonalBook(
      {required this.dayStarted, required this.dayFinished, required this.comments, required this.googleBook, this.id});

  PersonalBook.fromMap(Map<String, dynamic> map): id = map["id"],
        dayStarted = map["dayStarted"],
        dayFinished = map["dayFinished"],
        comments = map["coments"],
        googleBook = GoogleBook.fromJson(jsonDecode(map["googleBook"]));


  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "googleBook": jsonEncode(googleBook.toMap()),
      "dayStarted": dayStarted,
      "dayFinished": dayFinished,
      "comments": comments
    };
  }
}