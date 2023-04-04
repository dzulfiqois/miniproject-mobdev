import 'package:flutter/material.dart';
import 'package:miniproject/book_model/book_directory.dart';

class DoneBookList extends StatelessWidget {
  final List<BookDirectory> doneBookDirectoryList;
  const DoneBookList({Key? key, required this.doneBookDirectoryList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(100.0)),
          child: AppBar(
            centerTitle: true,
            title: Text("Buku telah Dibaca"),
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final BookDirectory book = doneBookDirectoryList[index];
        return Card(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                book.namaBuku,
                style: const TextStyle(fontSize: 16),
              ),
              const Icon(Icons.done_outlined),
            ],
          ),
        );
      }),
    );
  }
}
