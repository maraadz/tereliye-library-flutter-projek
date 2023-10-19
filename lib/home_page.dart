import 'package:flutter/material.dart';
import 'detail_category.dart';
import 'category.dart';
import 'favorite_page.dart';
import 'setting_profile.dart';
import 'book.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Deklarasikan daftar buku di luar kelas StatefulWidget
final List<Book> books = [
  Book(
    title: "About Life",
    author: "Tere Liye",
    genre: "Non-Fiksi",
    rating: 4.3,
    coverImage: 'assets/AboutLife.jpg',
  ),
  Book(
    title: "Bibi Gill",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.5,
    coverImage: 'assets/BibiGill.jpg',
  ),
  Book(
    title: "Hujan",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.5,
    coverImage: 'assets/Hujan.jpg',
  ),
  Book(
    title: "Janji",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.4,
    coverImage: 'assets/Janji.jpg',
  ),
  Book(
    title: "Lumpu",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.2,
    coverImage: 'assets/Lumpu.jpg',
  ),
  Book(
    title: "Matahari Minor",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.6,
    coverImage: 'assets/MatahariMinor.jpg',
  ),
  Book(
    title: "Sesuk",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.5,
    coverImage: 'assets/Sesuk2023.jpg',
  ),
  Book(
    title: "Si Anak Pemberani",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.4,
    coverImage: 'assets/SiAnakPemberani.jpg',
  ),
  Book(
    title: "Si Anak Pintar",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.3,
    coverImage: 'assets/SiAnakPintar.jpg',
  ),
  Book(
    title: "Si Anak Savana",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.2,
    coverImage: 'assets/SiAnakSavana.jpg',
  ),
  Book(
    title: "Si Putih",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.5,
    coverImage: 'assets/SiPutih.jpg',
  ),
  Book(
    title: "Sunset Dan Rosie",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.6,
    coverImage: 'assets/SunsetDanRosie.jpg',
  ),
  Book(
    title: "Tanah Para Bandit",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.5,
    coverImage: 'assets/TanahParaBandit.jpg',
  ),
  Book(
    title: "Tentang Kamu",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.3,
    coverImage: 'assets/TentangKamu.jpg',
  ),
  Book(
    title: "Yang Telah Lama Pergi",
    author: "Tere Liye",
    genre: "Fiksi",
    rating: 4.4,
    coverImage: 'assets/YangTelahLamaPergi.jpg',
  ),
];


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String namaPengguna = "Nama Pengguna";
  String avatarPath = 'assets/mutiara.jpg';

  TextEditingController searchController = TextEditingController();
  List<Book> searchResults = List<Book>.from(books);

  @override
  void initState() {
    super.initState();
    searchResults = List<Book>.from(books);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TereLiye Library"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Tambahkan logika untuk navigasi ke halaman sebelumnya di sini.
          },
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(namaPengguna),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(avatarPath),
              ),
            ),
            ListTile(
              title: Text("Genre"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryPage(title: 'Genre'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Favorite"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Setting Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingProfilePage(
                      namaPengguna: namaPengguna,
                      avatarPath: avatarPath,
                      onProfileUpdate: (newNamaPengguna, newAvatarPath) {
                        setState(() {
                          namaPengguna = newNamaPengguna;
                          avatarPath = newAvatarPath;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingProfilePage(
                      namaPengguna: namaPengguna,
                      avatarPath: avatarPath,
                      onProfileUpdate: (newNamaPengguna, newAvatarPath) {
                        setState(() {
                          namaPengguna = newNamaPengguna;
                          avatarPath = newAvatarPath;
                        });
                      },
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatarPath),
                    radius: 30,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, $namaPengguna", style: TextStyle(fontSize: 18)),
                      Text("Mari jelajahi karya-karya Tere Liye!",
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: searchController,
              onChanged: (query) {
                setState(() {
                  searchResults = books
                      .where((book) => book.title
                          .toLowerCase()
                          .contains(query.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                hintText: "Cari buku",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Banyak Disukai",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(height: 16),
            CarouselSlider(
              options: CarouselOptions(
                height: 250,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: searchResults.map((book) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(book.coverImage),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(title: "Baru"),
                      ),
                    );
                  },
                  child: Text("Baru"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(title: "Populer"),
                      ),
                    );
                  },
                  child: Text("Populer"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(title: "Trending"),
                      ),
                    );
                  },
                  child: Text("Trending"),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Buku",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  final book = searchResults[index];
                  return BookCard(book: book);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      shadowColor: Colors.white,
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: ListTile(
        leading: Image.asset(book.coverImage),
        title: Text(
          book.title,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        subtitle: Text(
          book.author,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryDetailPage(book: book),
              ),
            );
          },
          child: Text(
            "Read more",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}