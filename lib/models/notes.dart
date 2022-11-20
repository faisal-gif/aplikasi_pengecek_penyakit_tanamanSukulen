class Notes {
  int _id;
  String _judul;
  String _isi;
  int get id => _id;
  String get judul => this._judul;
  set judul(String value) => this._judul = value;
  String get isi => this._isi;
  set isi(String value) => this._isi = isi;
 
  
// konstruktor versi 1
  Notes(this._judul , this._isi);
// konstruktor versi 2: konversi dari Map ke Item
  Notes.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._judul = map['judul'];
    this._isi = map['isi'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['judul'] = judul;
    map['isi'] = isi;
    return map;
  }
}