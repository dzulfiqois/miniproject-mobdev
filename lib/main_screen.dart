import 'package:flutter/material.dart';
import 'package:miniproject/book_list.dart';
import 'package:miniproject/book_model/book_directory.dart';
import 'package:miniproject/detail_screen.dart';

// class MainScreen extends StatelessWidget{
//   MainScreen ({Key? key}) : super(key: key);
//
//   final List<BookDirectory> doneBookDirectoryList = [];
//   final List<BookDirectory> bookDirectoryList = [
//     BookDirectory(
//         namaBuku: 'Bulan',
//         penulis:'Tere Liye',
//         penerbit:'Gramedia Pustaka Utama',
//         tahunterbit:'2015',
//         halaman:'440',
//         genre:'Fantasi, Fiksi',
//         imageAsset: 'assets/images/bulan-tereliye.jpg'
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context){}
// }
//


//tinggal dikit
// class MainScreen extends StatefulWidget{
//   const MainScreen ({Key? key}) : super(key: key);
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: ClipRRect(
//             clipBehavior: Clip.antiAlias,
//             borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(100.0),
//                 bottomRight: Radius.circular(0.0)),
//             child: AppBar(
//               centerTitle: true,
//               title: const Text('Katalog Buku'),
//               actions: <Widget> [
//                 IconButton(
//                   icon: const Icon(Icons.done_outlined),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) {
//                         return Checked();
//                       }),);
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//       body: BookDirectory(),
//     );
//
//   }
// }

// UNTUK SAMPAI LAYOUTING ---ini
// class MainScreen extends StatelessWidget{
//   MainScreen({Key? key}) : super(key: key);
//
//   final List<BookDirectory> readBookDirectoryList=[];
//   final List<BookDirectory> bookDirectoryList=[
//     BookDirectory(
//         namaBuku: 'Bulan',
//         penulis:'Tere Liye',
//         penerbit:'Gramedia Pustaka Utama',
//         tahunterbit:'2015',
//         halaman:'440',
//         genre:'Fantasi, Fiksi',
//         imageAsset: 'assets/images/bulan-tereliye.jpg'
//     ),
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: ClipRRect(
//             clipBehavior: Clip.antiAlias,
//             borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(100.0),
//                 bottomRight: Radius.circular(0.0)),
//             child: AppBar(
//               centerTitle: true,
//               title: const Text('Katalog Buku'),
//             ),
//           ),
//         ),
//         body: ListView.builder(
//             itemBuilder: (context, index){
//
//               final BookDirectory book = booklist[index];
//               return InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return DetailScreen(book: book);
//                   }));
//                 },
//                 child:listBook(book),
//               );
//             },
//           itemCount: booklist.length,
//             ),
//       );
//   }
// }

//tinggal dikit
class MainScreen extends StatefulWidget{
  MainScreen({Key? key}):super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  final List<BookDirectory> doneBookDirectoryList = [];
  // final List<BookDirectory> bookDirectoryList = [
  //   BookDirectory(
  //       namaBuku: 'Bumi',
  //       penulis:'Tere Liye',
  //       penerbit:'Gramedia Pustaka Utama',
  //       tahunterbit:'2014',
  //       halaman:'440',
  //       genre:'Fantasi, Fiksi',
  //       imageAsset: 'assets/images/bumi-tereliye.jpg'
  //   ),
  // ];

  @override
  Widget build(BuildContext context){
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
            title: Text('Katalog Buku'),
          ),
        ),
      ),
      body: BookList(doneBookDirectoryList: doneBookDirectoryList),
    );
  }
}






























//UNTUK SAMPAI LAYOUTING
// class MainScreen extends StatelessWidget{
//   const MainScreen({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: ClipRRect(
//             clipBehavior: Clip.antiAlias,
//             borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(100.0),
//                 bottomRight: Radius.circular(0.0)),
//             child: AppBar(
//               centerTitle: true,
//               title: const Text('Katalog Buku'),
//             ),
//           ),
//         ),
//         body: ListView.builder(
//             itemBuilder: (context, index){
//
//               final BookDirectory book = booklist[index];
//               return InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return DetailScreen(book: book);
//                   }));
//                 },
//                 child:listBook(book),
//               );
//             },
//           itemCount: booklist.length,
//             ),
//       );
//   }
//
//   Widget listBook(BookDirectory book){
//       return Card(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget> [
//             Expanded(
//               flex: 1,
//               child: Image.asset(book.imageAsset),
//             ),
//             Expanded(
//               flex: 2,
//               child: Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget> [
//                       Text(
//                         book.namaBuku,
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                     ],
//                   ),
//               ),
//             ),
//           ],
//         ),
//       );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:miniproject/book_model/book_directory.dart';
// import 'package:miniproject/detail_screen.dart';
//
// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(centerTitle: true,
//           title: const Text('Bulan'),
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(100),
//             ),
//           ),
//         ),
//       body: ListView.builder(
//           itemBuilder: (context, index){
//             final BookDirectory book = booklist[index];
//             return InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return DetailScreen(book: book);
//                 }));
//               },
//               child: listBook(book),
//             );
//           },
//           itemCount: booklist.length,
//           ),
//     );
//   }
//
//   Widget listBook() {
//     return Card(
//         child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const <Widget> [
//           Expanded(
//             flex: 1,
//             child: Image.asset(book.imageAssets)
//           ),
//           Expanded(
//             flex: 2,
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget> [
//                   Text(
//                     book.namaBuku,
//                     style: const TextStyle(fontSize: 16),
//                     ),
//                   const SizedBox(
//                     Height:10,
//                     ),
//                   Text('2'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//     ),
//
//     );
//   }
//
// }
