class Question {
  final int id, answer;
  final String question;
  final List<String> options;
  final String jenis;
  final String penanganan;

  Question(
      {this.id,
      this.question,
      this.answer,
      this.options,
      this.jenis,
      this.penanganan});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Apakah ada tonjolan atau kotoran yang menempel pada daun atau batang ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Kutu Busuk",
    "penanganan":
        "Untuk mencegah munculnya kutu putih ini, penting bagi kita untuk merawat tanaman dengan folithion atau baytroid. Dengan cara yang sama, kita dapat merendam tanaman dalam pot selama 30 menit dalam campuran air dengan insektisida yang terbuat dari diazinon atau folithion.",
  },
  {
    "id": 2,
    "question":
        "Apakah terdapat ulat di batang atau daun terutama pada malam hari ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Ulat",
    "penanganan":
        "Untuk menghilangkan hama pada jenis tanaman ini, penting bagi kita untuk menyemprotnya dengan beberapa jenis insektisida. Perlu dicatat bahwa insektisida yang kita gunakan untuk membasmi kutu putih akan membantu kita menyingkirkan ulat.",
  },
  {
    "id": 3,
    "question":
        "Apakah di daun terdapat bintik-bintik kuning atau abu-abu, yang akan bergerak dari ujung ke seluruh lembaran ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Tungau",
    "penanganan":
        "Anda bisa menyemprotkan cairan sabun cuci piring, sabun bayi, atau deterjen. Selain itu, alcohol isopropyl juga bisa digunakan.",
  },
  {
    "id": 4,
    "question":
        "Apakah tanaman sukulen terlihat kotor karena tertutup benda seperti kapas kehitaman ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Kutu Putih (Mealy bug)",
    "penanganan":
        "sikatlah bagian yang terserang dengan sikat gigi/kuas. Kalau sudah parah, semprotkan insektisida Basudin 60 EC (Bahan Aktif Diazinon 600 g/l dengan dosis 2 ml/liter air) dengan interval waktu aplikasi setiap 10 hari sekali, sampai serangan kutu putih menghilang.",
  },
  {
    "id": 5,
    "question":
        "Apakah tanaman berubah jadi kekuningan (seperti daun layu) dan akhirnya mati ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Kutu Batok (Aspidiotus sp)",
    "penanganan":
        "buang saja sukulen yang terserang agar tak menular ke sukulen lain. Jika belum parah rendamlah sukulen dalam larutan sabun (resep sama seperti memberantas tungau) selama 15 menit.",
  },
  {
    "id": 6,
    "question": "Apakah terjadi pembusukan pada pangkal batang sukulen ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Busuk Pangkal Batang (Sclerotium rolfsii Sacc.)",
    "penanganan":
        "lakukan aplikasi fungisida dengan merek dagang Benlate T20 KIP (Bahan Aktif Benomyl 50%, dosis 1-2 gram/liter air). Pengendalian pre-emtif yang dapat dilakukan pemilihan bibit yang steril dengan kondisi prima dan sehat. Saat dilakukan penyiraman, diusahakan supaya air penyiraman jatuh langsung ke media tanam, bukan menimpa langsung ke tanaman.",
  },
  {
    "id": 7,
    "question":
        "Apakah tanaman sukulen menjadi layu, kusam dan sering mengandung lendir putih yang kotor, lalu mati ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Busuk Bakteri (Pesudomonas sp)",
    "penanganan":
        "lakukan sterilisasi media tanam sebelum digunakan. Jika sudah terserang, tanaman disingkirkan agar tidak menulari kaktus lain yang masih sehat.",
  },
  {
    "id": 8,
    "question":
        "Apakah permukaan batang kaktus yang terserang akan ditutupi lapisan putih abu-abu ? Jika disentuh, lapisan ini akan terasa saperti memegang tepung ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Penyakit Tepung (Oidium erysiphoides Fr.)",
    "penanganan":
        "Untuk mengatasinya, taburkan tepung belerang pada permukaan batang kaktus yang terserang.",
  },
  {
    "id": 9,
    "question": "Apakah batang membusuk dan berwarna kecokelatan ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Layu Fusarium (Fusarium oxysporium Schl.)",
    "penanganan":
        "Sebaiknya jauhkan tanaman yang terserang dari tanaman yang masih sehat agar tidak terjadi penularan. Setelah itu dapat diaplikasikan Benlate T20 KIP (Bahan Aktif Benomyl 50%, dosis 1-2 gram/liter air).",
  },
  {
    "id": 10,
    "question":
        "Apakah batang tertutup lapisan hitam dan ditumbuhi jamur berwarna cokelat ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Kapang Jelaga (Capnodium sp)",
    "penanganan":
        "Pengendalian yang dapat dilakukan dengan menaburkan tepung belerang ke permukaan batang tanaman yang sakit.",
  },
  {
    "id": 11,
    "question": "Apakah ruas-ruas batang menjadi layu dan berguguran ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Kutu Wol (Datylopius tomentus)",
    "penanganan":
        "Pengendalian yang dapat dilakukan dengan cara membersihkan sukulen memakai sikat atau kuas. Secara kimia dengan menyemprotkan Decis 25 EC (Bahan Aktif Deltamethrin 25 g/l, dengan dosis disesuaikan dengan aturan pakai dalam wadah kemasan).",
  },
  {
    "id": 12,
    "question":
        "Apakah tanaman saat masak hilang / batang tanaman digerogoti ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Tikus Rumah (Rattus-rattus diardi)",
    "penanganan":
        "Untuk mengendalikannya, pasang perangkap tikus di sekitar sukulen dan bersihkan sampah di lokasi tanaman.",
  },
  {
    "id": 13,
    "question": "Apakah bagian akar / tunas muda pada tanaman rusak ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Semut",
    "penanganan":
        "Sebaiknya singkirkan semut dengan menjemur kaktus di bawah terik matahari. Lakukan pembersihan terhadap lingkungan sekitar pertanaman."
  },
  {
    "id": 14,
    "question":
        "Apakah permukaan batang kaktus terlihat kotor/kusam, dan pertumbuhannya makin meran ?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Kutu Sisik (Pseudococcus sp.)",
    "penanganan":
        "Secara mekanik, kutu sisik dapat dikendalikan dengan membersihkan permukaan kulit batang menggunakan sikat halus/kuas. Bisa juga secara kimiawi dengan menyemprotkan Insektisida Decis 25 EC (Bahan Aktif Deltamethrin 25 g/l, dengan dosis tertera pada kemasan)."
  },
  {
    "id": 15,
    "question":
        "Apakah tunas – tunas kaktus rusak dan tidak beraturan, kadang-kadang kaktus dapat menjadi busuk?",
    "options": ['Iya', 'Tidak'],
    "answer_index": 0,
    "jenis": "Bekicot atau Keong Beracun (Achatina fulica F.)",
    "penanganan":
        "Bekicot dikendalikan dengan cara melakukan sanitasi lingkungan atau menjaga lingkungan tetap bersih, atau memusnahkan bekicot dengan menangkap dan membunuhnya."
  },
];
