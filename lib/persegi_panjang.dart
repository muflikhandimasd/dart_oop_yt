class PersegiPanjang {
  double _panjang;
  double _lebar;

  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  double getPanjang() {
    return _panjang;
  }

  double hitungLuas() {
    return this._panjang * lebar;
  }

  // GETTER SETTER
  void set lebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  double get lebar {
    return _lebar;
  }

  // Setter getter ga harus bikin field, bisa langsungan seperti di bawah ini
  double get luas => _panjang * _lebar;
}
