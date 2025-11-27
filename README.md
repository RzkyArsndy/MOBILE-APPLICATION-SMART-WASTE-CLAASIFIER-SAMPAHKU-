

---

# 🗑️ **Sampahku – Mobile Application Smart Waste Classifier**

Aplikasi mobile berbasis Flutter untuk mengklasifikasi jenis sampah menggunakan Machine Learning (CNN + TFLite).

---

## 📱 **Deskripsi Proyek**

**Sampahku** adalah aplikasi klasifikasi jenis sampah menggunakan model Machine Learning yang di-deploy dalam bentuk **TensorFlow Lite (TFLite)**.
Aplikasi ini dikembangkan untuk membantu pengguna mengenali kategori sampah secara cepat dan akurat sehingga dapat mendukung pengelolaan sampah yang lebih baik.

Proyek ini terdiri dari:

* Aplikasi mobile (Flutter)
* Model klasifikasi sampah (CNN)
* Integrasi kamera atau gallery untuk input citra
* Tampilan UI sederhana dan mudah digunakan

---

## 🤖 **Catatan Penting Tentang Model**

📌 **Model klasifikasi masih belum 100% akurat.**

Hal ini disebabkan oleh:

* Dataset yang cukup besar dan kompleks
* Keterbatasan perangkat dalam proses training
* Proses training membutuhkan waktu lebih panjang untuk mencapai akurasi optimal

Model akan terus diperbaiki dengan:

* Penambahan data
* Fine-tuning
* Optimasi arsitektur CNN

Aplikasi tetap dapat digunakan, namun hasil klasifikasi mungkin tidak selalu tepat.

---

## 🚀 **Fitur Utama**

* 📸 Prediksi sampah menggunakan kamera atau gallery
* ⚡ Cepat karena menggunakan model TFLite
* 🎨 UI sederhana, ringan, dan responsif
* 🧠 Menggunakan CNN (Convolutional Neural Network)
* 🔄 Loading screen & splash screen
* 📂 Modular architecture

---

## 📁 **Struktur Folder**

```
lib/
 ├── screens/
 │   ├── home_screen.dart
 │   ├── classifier_screen.dart
 │   ├── info_screen.dart
 │   └── splash_screen.dart
 assets/
 ├── model.tflite
 ├── labels.txt
 Model/
 └── (model training files – tidak diupload ke GitHub)
```

---

## 🛠️ **Teknologi yang Digunakan**

* **Flutter 3.x**
* **Dart**
* **TensorFlow Lite**
* **CNN Image Classification**
* **Android Studio**

---

## 🧪 Cara Menjalankan Proyek

1. Clone repository:

   ```bash
   git clone https://github.com/RzkyArsndy/MOBILE-APPLICATION-SMART-WASTE-CLAASIFIER-SAMPAHKU-.git
   ```

2. Masuk ke folder project:

   ```bash
   cd Sampahku
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Tambahkan file model TFLite (tidak disertakan dalam repo):

   * `assets/model.tflite`
   * `assets/labels.txt`

5. Jalankan aplikasi:

   ```bash
   flutter run
   ```

---

## 📊 **Pengembangan Model**

* Model dilatih menggunakan CNN
* Dataset berupa gambar dari berbagai jenis sampah
* Preprocessing: resize, normalization, augmentation
* Export ke format `.tflite`

---

## 📌 Catatan Tambahan

File model `.h5` dan `.tflite` **tidak disertakan dalam GitHub** karena ukuran file terlalu besar (di atas 100MB).
Jika ingin mendapatkan model, hubungi pengembang atau lakukan training ulang.

---

## 🤝 Kontribusi

Kontribusi sangat terbuka!
Silakan fork repository ini dan buat pull request.

---

## 📧 Kontak Developer

**Rizky Arisandy**
GitHub: [https://github.com/RzkyArsndy](https://github.com/RzkyArsndy)

---

