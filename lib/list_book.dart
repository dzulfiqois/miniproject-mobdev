import 'package:flutter/material.dart';
import 'package:miniproject/book_model/book_directory.dart';

class ListBook extends StatelessWidget {
  final BookDirectory book;
  final bool isReaded;
  final Function(bool? value) onCheckboxClick;

  const ListBook(
      {required this.book,
      required this.isReaded,
      required this.onCheckboxClick
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isReaded ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(book.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    book.namaBuku,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
              checkColor: Colors.greenAccent,
              value: isReaded,
              onChanged: onCheckboxClick
          ),
        ],
      ),
    );
  }
}
