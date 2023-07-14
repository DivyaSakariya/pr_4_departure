class ChapterModel {
  final int chNumber;
  final String chSummary;
  final String chSummaryHindi;
  final int id;
  final String img;
  final String imgName;
  final String name;
  final String nameMeaning;
  final String nameTranslation;
  final String nameTransliterated;
  final int verseCount;

  ChapterModel({
    required this.chNumber,
    required this.chSummary,
    required this.chSummaryHindi,
    required this.id,
    required this.img,
    required this.imgName,
    required this.name,
    required this.nameMeaning,
    required this.nameTranslation,
    required this.nameTransliterated,
    required this.verseCount,
  });

  factory ChapterModel.fromMap({required Map data}) {
    return ChapterModel(
      chNumber: data['chNumber'],
      chSummary: data['chSummary'],
      chSummaryHindi: data['chSummaryHindi'],
      id: data['id'],
      img: data['img'],
      imgName: data['imgName'],
      name: data['name'],
      nameMeaning: data['nameMeaning'],
      nameTranslation: data['nameTranslation'],
      nameTransliterated: data['nameTransliterated'],
      verseCount: data['verseCount'],
    );
  }
}
