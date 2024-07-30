class Title {
  static const int maxLength = 50;
  String title;
  Title({required this.title}){
    if(title.length > maxLength){
      throw Exception('タイトルは50文字以内で入力してください');
    }
  }
  String get getTitle => title;
}