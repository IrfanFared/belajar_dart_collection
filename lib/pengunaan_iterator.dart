class MyIterator implements Iterator<int> {
  final List<int> _items;
  int _index = -1;

  // Konstruktor untuk menginisialisasi iterator dengan daftar yang diberikan
  MyIterator(this._items);

  // Mengembalikan elemen saat ini dalam iterasi
  @override
  int get current => _items[_index];

  // Pindah ke elemen berikutnya, mengembalikan true jika masih ada elemen
  @override
  bool moveNext() {
    if (_index < _items.length - 1) {
      _index++;
      return true;
    }
    return false;
  }
}

void main() {
  var items = [10, 20, 30, 40];
  var iterator = MyIterator(items);

  // Menggunakan iterator untuk mencetak semua elemen
  while (iterator.moveNext()) {
    print(iterator.current);
  }
}
