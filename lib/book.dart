class Book {
  final String title;
  final String author;
  final String genre;
  final double rating;
  final String coverImage; // Tambahkan lokasi gambar buku

  Book({
    required this.title,
    required this.author,
    required this.genre,
    required this.rating,
    required this.coverImage, // Inisialisasi lokasi gambar buku
  });
}
