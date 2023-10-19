import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import package image_picker
import 'dart:io';

class SettingProfilePage extends StatefulWidget {
  final String namaPengguna;
  final String avatarPath;
  final Function(String, String) onProfileUpdate;

  SettingProfilePage({
    required this.namaPengguna,
    required this.avatarPath,
    required this.onProfileUpdate,
  });

  @override
  _SettingProfilePageState createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
  TextEditingController controllerNama = TextEditingController();
  String? newAvatarPath; // Simpan path avatar yang baru dipilih.

  @override
  void initState() {
    super.initState();
    controllerNama.text = widget.namaPengguna;
  }

  Future<void> _selectAvatar() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        newAvatarPath = pickedFile.path; // Simpan path avatar yang baru.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: _selectAvatar, // Ketika avatar di-klik, panggil _selectAvatar.
              child: CircleAvatar(
                backgroundImage: newAvatarPath != null
                    ? FileImage(File(newAvatarPath!))
                    : AssetImage(widget.avatarPath) as ImageProvider,
                radius: 60,
              ),
            ),
            TextField(
              controller: controllerNama,
              decoration: InputDecoration(labelText: 'Nama Pengguna'),
            ),
            ElevatedButton(
              onPressed: () {
                final newNamaPengguna = controllerNama.text;
                final updatedAvatarPath = newAvatarPath ?? widget.avatarPath;
                widget.onProfileUpdate(newNamaPengguna, updatedAvatarPath);
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
