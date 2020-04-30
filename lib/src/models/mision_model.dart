class Mision {
  String id, createDate, title, headerImgUrl, initialPos;
  List<String> prerequisite, rewards, contentText, contentImgUrl;


  Mision({
   this.id,
   this.createDate,
   this.title,
   this.headerImgUrl,
   this.initialPos,
   this.prerequisite,
   this.rewards,
   this.contentText,
   this.contentImgUrl
  });

  Mision.map(
      Map<String, dynamic> parsedJson,
      List<String> _prerequisite,
      List<String> _rewards,
      List<String> _contentText,
      List<String> _contentImgUrl)
      : id = parsedJson['_id'],
        prerequisite = _prerequisite,
        rewards = _rewards,
        contentText = _contentText,
        contentImgUrl = _contentImgUrl,
        createDate = parsedJson['createDate'],
        title = parsedJson['title'],
        headerImgUrl = parsedJson['headerImgUrl'],
        initialPos = parsedJson['initialPos'];


}