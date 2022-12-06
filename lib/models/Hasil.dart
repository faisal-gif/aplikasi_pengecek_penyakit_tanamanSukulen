class Hasil {
  String _jenis;
  String get jenis => this._jenis;
  set jenis(String value) => this._jenis = value;
  String _penanganan;
  String get penanganan => this._penanganan;
  set penanganan(String value) => this._penanganan = value;
  String _gambar;
  String get gambar => this._gambar;
  set gambar(String value) => this._gambar = value;
  int _jumlah;
  int get jumlah => this._jumlah;
  set jumlah(int value) => this._jumlah = jumlah;

  Hasil(this._jenis,this._penanganan,this._gambar, this._jumlah);

  // konstruktor versi 2: konversi dari Map ke Item
  Hasil.fromMap(Map<String, dynamic> map) {
    this.jenis = map['jenis'];
    this._penanganan = map['penanganan'];
    this._gambar = map['gambar'];
    this.jumlah = map['jumlah'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['jenis'] = jenis;
    map['penanganan'] = penanganan;
    map['gambar'] = gambar;
    map['jumlah'] = jumlah;
    return map;
  }
}
