import 'package:flutter/material.dart';
import 'package:miniproject/book_model/book_directory.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.book}) : super(key: key);

  final BookDirectory book;

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
            title: Text(book.namaBuku),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Image.asset(
                book.imageAsset,
                width: 300,
                height: 400,
              ),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.only(left: 60, top: 10),
              child: Text(
                "Penulis: ${book.penulis}",
                style: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 100),
              padding: const EdgeInsets.only(left: 60, top: 10),
              child: Text(
                "Penerbit: ${book.penerbit}",
                style: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.only(left: 60, top: 10),
              child: Text(
                "Tahun Terbit: ${book.tahunterbit}",
                style: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.only(left: 60, top: 10),
              child:  Text(
                "Halaman: ${book.halaman}",
                style: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.only(left: 60, top: 10),
              child:  Text(
                "Genre: ${book.genre}",
                style: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: 100,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF18265),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Sudah Dibaca",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
