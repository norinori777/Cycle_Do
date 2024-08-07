class CycleTargetContent {
  static int maxLength = 1000;
  final String content;
  CycleTargetContent({required this.content}){
    if(content.length > maxLength){
      throw Exception('コンテンツは1000文字以内で入力してください');
    }
  }
  String get getContent => content;

  factory CycleTargetContent.create(String content){
    return CycleTargetContent(content: content);
  }
}