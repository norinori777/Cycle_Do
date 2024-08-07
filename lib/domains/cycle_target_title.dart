class CycleTargetTitle {
  static const int maxLength = 50;
  String title;
  CycleTargetTitle({required this.title}){
    if(title.length > maxLength){
      throw Exception('タイトルは50文字以内で入力してください');
    }
  }
  String get getTitle => title;

  factory CycleTargetTitle.create(String title){
    return CycleTargetTitle(title: title);
  }
}