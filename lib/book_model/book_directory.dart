class BookDirectory {
  String namaBuku;
  String penulis;
  String penerbit;
  String tahunterbit;
  String halaman;
  String genre;
  String imageAsset;

  BookDirectory({
    required this.namaBuku,
    required this.penulis,
    required this.penerbit,
    required this.tahunterbit,
    required this.halaman,
    required this.genre,
    required this.imageAsset,
  });
}

var booklist = [
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
