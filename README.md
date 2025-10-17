# Buku Resep Indonesia 🍽️

Aplikasi mobile untuk menjelajahi dan menyimpan resep masakan Indonesia yang lezat dan autentik.

## ✨ Fitur Utama

- 📖 **Koleksi Resep Lengkap** - Berbagai resep masakan Indonesia dari berbagai daerah
- 🔍 **Pencarian Cerdas** - Cari resep berdasarkan nama, bahan, kategori, atau daerah
- 💝 **Favorit** - Simpan resep favorit Anda untuk akses cepat
- 🏷️ **Filter Kategori** - Filter resep berdasarkan kategori (Daging, Ikan, Sayuran, dll)
- 📱 **Responsive Design** - Tampilan optimal di mobile dan browser
- 🎨 **UI Modern** - Desain yang menarik dan user-friendly

## 📋 Kriteria Submission

Aplikasi ini memenuhi semua kriteria submission Dicoding:

### ✅ Stateless Widget

- `RecipeCard` - Widget untuk menampilkan card resep
- `CategoryChip` - Widget untuk chip kategori
- `MyApp` - Root widget aplikasi

### ✅ Stateful Widget

- `HomeScreen` - Halaman utama dengan filter kategori dinamis
- `RecipeDetailScreen` - Halaman detail dengan fitur favorit
- `SearchScreen` - Halaman pencarian dengan input field
- `FavoritesScreen` - Halaman daftar resep favorit

### ✅ Navigation

Aplikasi memiliki navigasi antar halaman:

- Home Screen → Detail Screen
- Home Screen → Search Screen
- Home Screen → Favorites Screen
- Search Screen → Detail Screen
- Favorites Screen → Detail Screen

### ✅ Responsive Layout

- Menggunakan GridView dengan `crossAxisCount` dinamis
- Menyesuaikan jumlah kolom berdasarkan lebar layar
- Tampilan optimal untuk mobile (1 kolom), tablet (2-3 kolom), dan desktop (4 kolom)
- Tidak ada overflow pada semua ukuran layar

## 🏗️ Struktur Proyek

```
lib/
├── main.dart                 # Entry point aplikasi
├── models/
│   └── recipe.dart          # Model data Recipe
├── data/
│   └── recipe_data.dart     # Data dummy resep Indonesia
├── screens/
│   ├── home_screen.dart     # Halaman utama (Stateful)
│   ├── recipe_detail_screen.dart  # Detail resep (Stateful)
│   ├── search_screen.dart   # Pencarian resep (Stateful)
│   └── favorites_screen.dart # Daftar favorit (Stateful)
└── widgets/
    ├── recipe_card.dart     # Card resep (Stateless)
    └── category_chip.dart   # Chip kategori (Stateless)
```

## 🍜 Daftar Resep

Aplikasi ini menyediakan 8 resep masakan Indonesia:

1. **Rendang** - Masakan daging khas Sumatera Barat
2. **Nasi Goreng** - Nasi goreng Indonesia
3. **Soto Ayam** - Sup ayam khas Jawa Timur
4. **Gado-Gado** - Salad sayuran dengan bumbu kacang
5. **Sate Ayam** - Sate dengan bumbu kacang
6. **Gudeg** - Masakan nangka muda khas Yogyakarta
7. **Pempek** - Makanan khas Palembang
8. **Rawon** - Sup daging berkuah hitam dari Jawa Timur

## 🚀 Cara Menjalankan

1. Clone repository ini
2. Pastikan Flutter sudah terinstall
3. Jalankan `flutter pub get` untuk menginstall dependencies
4. Jalankan aplikasi dengan `flutter run`

## 📱 Screenshot

- **Home Screen**: Menampilkan grid resep dengan filter kategori
- **Detail Screen**: Informasi lengkap resep, bahan, dan langkah memasak
- **Search Screen**: Pencarian resep dengan hasil real-time
- **Favorites Screen**: Koleksi resep favorit pengguna

## 🎨 Design Features

- **Hero Animation** untuk transisi gambar yang smooth
- **Gradient Background** untuk visual yang menarik
- **Card Design** dengan shadow dan rounded corners
- **Color-coded Difficulty** (Hijau: Mudah, Orange: Sedang, Merah: Sulit)
- **Informasi Nutrisi** untuk setiap resep
- **Responsive Grid Layout** yang adaptif

## 🛠️ Teknologi

- Flutter SDK
- Dart
- Material Design 3

## 📝 Catatan

Aplikasi ini dibuat untuk submission Dicoding - Belajar Membuat Aplikasi Flutter untuk Pemula.
Data resep adalah data dummy untuk keperluan demonstrasi.

## 👨‍💻 Developer

Dibuat dengan ❤️ untuk submission Dicoding

---

**Happy Coding!** 🎉
