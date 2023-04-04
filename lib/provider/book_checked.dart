import 'package:flutter/foundation.dart';
import 'package:miniproject/book_model/book_directory.dart';

class Checked with ChangeNotifier{
  final List<BookDirectory> _bookChecked = [];

  List<BookDirectory> get bookChecked => _bookChecked;

  void completed(BookDirectory book, bool isReaded){
    isReaded
      ? _bookChecked.add(book) : _bookChecked.remove(book);
    notifyListeners();
  }
}