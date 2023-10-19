import 'package:flutter/material.dart';
import 'category.dart';
import 'setting_profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String namaPengguna = "Nama Pengguna"; // Default nama pengguna
  String avatarPath = 'assets/path_to_avatar_image.jpg';

  Future<void> _changeAvatar() async {
    // Tambahkan kode untuk mengunggah gambar avatar dari direktori pengguna
    // Simpan path gambar baru ke dalam variabel avatarPath
    // Misalnya: avatarPath = 'path_to_new_avatar_image.jpg';
    // Perbarui tampilan dengan setState() jika perlu
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("eBook Library"),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: null, // Hapus nama pengguna
              accountEmail: null, // Hapus email pengguna
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(avatarPath),
              ),
            ),
            ListTile(
              title: Text("Genre"),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman Genre di sini
              },
            ),
            ListTile(
              title: Text("Favorite"),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman Favorite di sini
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
              onTap: _changeAvatar,
              child: CircleAvatar(
                backgroundImage: AssetImage(avatarPath),
                radius: 30,
              ),
            ),
            Text("Hi, $namaPengguna"),
            Text("Mari jelajahi perpustakaan kami!"),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Cari Buku",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Buku Populer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              "Pilihan Random",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Tambahkan ListView dengan pilihan buku random di sini.
          ],
        ),
      ),
    );
  }
}
