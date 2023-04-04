import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/book_model/book_directory.dart';
import 'package:miniproject/detail_screen.dart';
import 'package:miniproject/list_book.dart';

class BookList extends StatefulWidget{
  final List<BookDirectory> doneBookDirectoryList;

  const BookList({
    Key? key,
    required this.doneBookDirectoryList
}) : super(key: key);

  @override
  _BookListState createState() => _BookListState(doneBookDirectoryList);
}

class _BookListState extends State<BookList>{
  final List<BookDirectory> doneBookDirectoryList;
  final List<BookDirectory> bookDirectoryList = [
    BookDirectory(
        namaBuku: 'Bulan',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2015',
        halaman:'440',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/bulan-tereliye.jpg'
    ),

    BookDirectory(
        namaBuku: 'Bumi',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2014',
        halaman:'440',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/bumi-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Matahari',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2016',
        halaman:'390',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/matahari-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Bintang',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2017',
        halaman:'392',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/bintang-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Ceros dan Batozar',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2018',
        halaman:'376',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/ceros-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Komet',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2018',
        halaman:'384',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/komet-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Komet Minor',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2019',
        halaman:'376',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/kometminor-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Selena',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2020',
        halaman:'368',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/selena-tereliye.jpg'
    ),
    BookDirectory(
        namaBuku: 'Nebula',
        penulis:'Tere Liye',
        penerbit:'Gramedia Pustaka Utama',
        tahunterbit:'2019',
        halaman:'376',
        genre:'Fantasi, Fiksi',
        imageAsset: 'assets/images/nebula-tereliye.jpg'
    ),
  ];

  _BookListState(this.doneBookDirectoryList);

  @override
  Widget build(BuildContext context){
    return ListView.builder(itemBuilder: (context, index){
      final BookDirectory book = bookDirectoryList[index];
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailScreen(book: book);
          }));
        },
        child: ListBook(
          book: book,
          isReaded: doneBookDirectoryList.contains(book),
          onCheckboxClick: (bool? value){
            setState(() {
              if(value!=null){
                value
                    ? doneBookDirectoryList.add(book)
                    : doneBookDirectoryList.remove(book);
              }
            });
          },
        ),
      );
    },
      itemCount: bookDirectoryList.length,
    );
  }
}