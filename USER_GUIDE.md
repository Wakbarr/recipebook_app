# Panduan Menggunakan Aplikasi Buku Resep Indonesia

## 🚀 Cara Menjalankan Aplikasi

### Prasyarat

- Flutter SDK terinstall (versi 3.9.2 atau lebih baru)
- Android Studio / VS Code dengan extension Flutter
- Device atau emulator untuk testing

### Langkah-langkah

1. **Clone atau Download Project**

   ```bash
   cd a:\Project\Flutter\submission-dicoding\recipebook_app
   ```

2. **Install Dependencies**

   ```bash
   flutter pub get
   ```

3. **Jalankan Aplikasi**

   **Di Chrome (Web):**

   ```bash
   flutter run -d chrome
   ```

   **Di Android Emulator:**

   ```bash
   flutter run -d android
   ```

   **Di iOS Simulator (Mac only):**

   ```bash
   flutter run -d ios
   ```

4. **Build untuk Production**

   **Android APK:**

   ```bash
   flutter build apk --release
   ```

   **Web:**

   ```bash
   flutter build web --release
   ```

## 📱 Cara Menggunakan Aplikasi

### 1. Halaman Utama (Home Screen)

**Fitur:**

- Lihat koleksi resep dalam bentuk grid
- Filter resep berdasarkan kategori (Semua, Daging, Ikan, Sayuran, Nasi, Sup)
- Akses menu pencarian dan favorit

**Cara Menggunakan:**

1. Scroll untuk melihat semua resep
2. Tap chip kategori untuk filter
3. Tap card resep untuk melihat detail
4. Tap icon search untuk mencari resep
5. Tap icon favorit untuk melihat resep favorit

### 2. Halaman Detail Resep

**Fitur:**

- Lihat informasi lengkap resep
- Waktu memasak, porsi, dan tingkat kesulitan
- Informasi nutrisi lengkap
- Daftar bahan-bahan
- Langkah-langkah memasak
- Tambah/hapus dari favorit
- Share resep (coming soon)

**Cara Menggunakan:**

1. Scroll untuk melihat semua informasi
2. Tap icon love untuk tambah/hapus favorit
3. Tap tombol back untuk kembali

### 3. Halaman Pencarian

**Fitur:**

- Cari resep berdasarkan nama, bahan, kategori, atau daerah
- Hasil real-time saat mengetik
- Saran pencarian populer

**Cara Menggunakan:**

1. Ketik kata kunci di search bar
2. Hasil akan muncul otomatis
3. Tap hasil untuk melihat detail
4. Tap X untuk clear pencarian

### 4. Halaman Favorit

**Fitur:**

- Lihat semua resep yang sudah difavoritkan
- Grid layout yang sama dengan home

**Cara Menggunakan:**

1. Scroll untuk melihat semua favorit
2. Tap resep untuk melihat detail

## 🎨 Tips Penggunaan

### Responsive Design

- **Mobile (Portrait):** 1 kolom grid
- **Tablet (Portrait):** 2 kolom grid
- **Tablet (Landscape):** 3 kolom grid
- **Desktop/Browser:** 4 kolom grid

Resize window browser untuk melihat adaptasi layout!

### Navigasi

- Gunakan tombol back native untuk kembali
- Gunakan AppBar back button untuk navigasi
- Hero animation akan membuat transisi lebih smooth

### Filter dan Pencarian

- Filter kategori bekerja pada halaman home
- Pencarian lebih powerful - cari berdasarkan apapun
- Kombinasikan filter dan scroll untuk UX terbaik

## 🐛 Troubleshooting

### Gambar Tidak Muncul

- Pastikan koneksi internet aktif
- URL gambar placeholder bersifat demonstrasi
- Untuk production, ganti dengan assets lokal atau URL valid

### Build Error

```bash
flutter clean
flutter pub get
flutter run
```

### Hot Reload Tidak Bekerja

- Tekan `r` di terminal untuk hot reload
- Tekan `R` untuk hot restart
- Atau save file di IDE yang support hot reload

## 📝 Catatan Developer

### Struktur Code

- **Model:** `lib/models/recipe.dart` - Data model
- **Data:** `lib/data/recipe_data.dart` - Dummy data
- **Screens:** `lib/screens/` - Semua halaman
- **Widgets:** `lib/widgets/` - Reusable widgets

### Customization

Untuk menambah resep baru, edit file `lib/data/recipe_data.dart`:

```dart
Recipe(
  id: '9',
  name: 'Nama Resep',
  description: 'Deskripsi...',
  category: 'Kategori',
  region: 'Daerah',
  cookingTime: 60,
  servings: 4,
  difficulty: 'Sedang',
  imageUrl: 'url_gambar',
  ingredients: ['bahan 1', 'bahan 2'],
  steps: ['langkah 1', 'langkah 2'],
  nutrition: {
    'Kalori': '400 kal',
    'Protein': '20g',
  },
),
```

### Theme Customization

Edit `lib/main.dart` untuk mengubah theme:

```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue, // Ganti warna
  ),
),
```

## 📞 Support

Jika ada pertanyaan atau issues:

1. Check dokumentasi Flutter: https://flutter.dev
2. Check submission checklist: SUBMISSION_CHECKLIST.md
3. Check README: README.md

---

**Selamat Mencoba! Happy Cooking! 🍽️**
