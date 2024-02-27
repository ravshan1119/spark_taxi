class Data {
  Data({
    required this.from,
    required this.to,
  });

  final String from;
  final String to;
}

List<Data> dataList = [
  Data(from: "Parkent bozori", to: "Kumush kon"),
  Data(from: "O’rta masjid", to: "Musavvirlar ko’chasi"),
  Data(from: "Obibuloq mahallasi", to: "Kumush kon"),
  Data(from: "Musavvirlar ko’chasi", to: "Parkent bozori"),
  Data(from: "Markaziy hiyobon", to: "Kattaqamish MFY"),
];
