import 'package:flutter/material.dart';
import 'book.dart';

class CategoryDetailPage extends StatelessWidget {
  final Book book;

  CategoryDetailPage({required this.book});

  String? getAssetPath(String title) {
    switch (title) {
      case "hello.jpg":
      case "Sesuk2023.jpg":
      case "TanahParaBandit.jpg":
        return "assets/$title";
      case "bumi.jpg":
      case "pulang.jpg":
      case "bintang.jpg":
      case "Hafalan Shalat Delisa.jpg":
      case "matahari.jpg":
      case "Komet Minor.jpg":
        return "assets/buku_populer/$title";
      case "Negeri Di Ujang Tanduk.jpg":
      case "hello.jpg":
      case "Ayahku Bukan Pembohong.jpg":
      case "Berjuta Rasanya.jpg":
      case "bumi.jpg":
        return "assets/buku_trending/$title";
      default:
        return null; // Mengembalikan null jika tidak ada gambar yang cocok
    }
  }

  @override
  Widget build(BuildContext context) {
    final assetPath = getAssetPath(book.coverImage);

       return Scaffold(
      appBar: AppBar(
        title: Text("Detail Buku"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text("Penulis: ${book.author}"),
            Text("Genre: ${book.genre}"),
            Text("Rating: ${book.rating.toStringAsFixed(1)}"),
            SizedBox(height: 16),
            Text("Sinopsis:"),
            Text(
              "Kisah-kisah menarik dengan alur yang tidak mudah ditebak.",
            ),
            SizedBox(height: 16),
            Text("Ulasan Pengguna:"),
            Text(
              "Pengguna 1: Buku bagus!\nPengguna 2: Saya suka buku ini.",
            ),
          ],
        ),
      ),
    );
  }
}
