class Mision {
  String id, createDate, title, headerImgUrl, initialPos;
  List<String> prerequisite, rewards, contentText, contentImgUrl;

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
        createDate = parsedJson['UrlWebOficial'],
        title = parsedJson['title'],
        headerImgUrl = parsedJson['headerImgUrl'],
        initialPos = parsedJson['initialPos'];
}