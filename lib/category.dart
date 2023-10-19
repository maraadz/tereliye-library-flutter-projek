import 'package:flutter/material.dart';
import 'detail_category.dart';
import 'book.dart';

class CategoryPage extends StatelessWidget {
  final String title;

  CategoryPage({required this.title});

  @override
  Widget build(BuildContext context) {
    List<Book> books = [];
    
    // Tambahkan buku-buku sesuai dengan kategori
    if (title == "Baru") {
      books = [
        Book(
          title: "Hello",
          author: "Penulis Hello",
          genre: "Genre 1",
          coverImage: "assets/hello.jpg",
          rating: 4.5,
        ),
        Book(
          title: "Sesuk2023",
          author: "Penulis Sesuk2023",
          genre: "Genre 2",
          coverImage: "assets/Sesuk2023.jpg",
          rating: 4.2,
        ),
        Book(
          title: "TanahParaBandit",
          author: "Penulis TanahParaBandit",
          genre: "Genre 3",
          coverImage: "assets/TanahParaBandit.jpg",
          rating: 4.8,
        ),
      ];
    } else if (title == "Populer") {
      books = [
        Book(
          title: "Bumi",
          author: "Penulis Bumi",
          genre: "Genre 1",
          coverImage: "assets/bumi.jpg",
          rating: 4.5,
        ),
        Book(
          title: "Pulang",
          author: "Penulis Pulang",
          genre: "Genre 2",
          coverImage: "assets/pulang.jpg",
          rating: 4.2,
        ),
        Book(
          title: "Bintang",
          author: "Penulis Bintang",
          genre: "Genre 3",
          coverImage: "assets/bintang.jpg",
          rating: 4.8,
        ),
        Book(
          title: "Hafalan Shalat Delisa",
          author: "Penulis Hafalan Shalat Delisa",
          genre: "Genre 4",
          coverImage: "assets/Hafalan Shalat Delisa.jpg",
          rating: 4.9,
        ),
        Book(
          title: "Matahari",
          author: "Penulis Matahari",
          genre: "Genre 5",
          coverImage: "assets/matahari.jpg",
          rating: 4.6,
        ),
        Book(
          title: "Komet Minor",
          author: "Penulis Komet Minor",
          genre: "Genre 6",
          coverImage: "assets/Komet Minor.jpg",
          rating: 4.3,
        ),
      ];
    } else if (title == "Trending") {
      books = [
        Book(
          title: "Hello",
          author: "Penulis Hello",
          genre: "Genre 2",
          coverImage: "assets/hello.jpg",
          rating: 4.5,
        ),
        Book(
          title: "Ayahku Bukan Pembohong",
          author: "Penulis Ayahku Bukan Pembohong",
          genre: "Genre 3",
          coverImage: "assets/Ayahku Bukan Pembohong.jpg",
          rating: 4.2,
        ),
        Book(
          title: "Berjuta Rasanya",
          author: "Penulis Berjuta Rasanya",
          genre: "Genre 4",
          coverImage: "assets/Berjuta Rasanya.jpg",
          rating: 4.6,
        ),
        Book(
          title: "Bumi",
          author: "Penulis Bumi",
          genre: "Genre 5",
          coverImage: "assets/bumi.jpg",
          rating: 4.5,
        ),
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Kategori Buku: $title"),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryDetailPage(book: books[index]),
                ),
              );
            },
            leading: Image.asset(books[index].coverImage),
            title: Text(books[index].title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Penulis: ${books[index].author}"),
                Text("Genre: ${books[index].genre}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
