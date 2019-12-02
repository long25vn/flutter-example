import 'dart:async';

const news = '<thu thập tin tức ở đây>';

Future<void> printTinTucHangNgay() async {
  var newsDigest = await thuThapTinTuc();
  print(newsDigest);
}

printTinXoSo() {
  print('So xo: [23, 63, 87, 26, 2]');
}

printTinThoiTiet() {
  print("Cuối tuần lạnh dưới 10 độ.");
}

printTinTheThao() {
  print('Man Utd bổ nhiệm HLV mới');
}

main() {
  printTinTucHangNgay();
  printTinXoSo();
  printTinThoiTiet();
  printTinTheThao();
}

Future<String> thuThapTinTuc() =>
    Future.delayed(Duration(seconds: 1), () => news);
//https://www.dartlang.org/f/dailyNewsDigest.txt
