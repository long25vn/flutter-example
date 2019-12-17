import 'dart:async';

class DauBep {
  void nauAn(monMoi) {
    print("Dang nau an : $monMoi");
  }
}

class TiemBanhMi {
  StreamController _controller = new StreamController();
  Stream get coMonMoi => _controller.stream;
  DauBep dauBep = new DauBep();

  void chuyenMonAnDenDauBep() {
    print("Thiet lap");
    coMonMoi.listen((monMoi) {
      dauBep.nauAn(monMoi);
    });
  }

  void khachHangGoiMon(String monMoi) {
    print("Khach goi $monMoi");
    _controller.add(monMoi);
  }
}

main() {
  var tiemBanhMi = new TiemBanhMi();
  tiemBanhMi.chuyenMonAnDenDauBep();
  tiemBanhMi.khachHangGoiMon("Banh mi pate");
  tiemBanhMi.khachHangGoiMon("Banh mi trung");
  tiemBanhMi.khachHangGoiMon("Banh mi xuc xich");

}
