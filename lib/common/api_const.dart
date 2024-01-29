class ApiConst {
  String main = 'https://lexica.art/api/v1/';

  String endPoint(String? prompt) {
    return 'search?q=$prompt';
  }
// GET https://lexica.art/api/v1/search?q=apples
// GET https://lexica.art/api/v1/search?q=https://media.gettyimages.com/photos/crete-senesi-countryside-in-summer-tuscany-italy-picture-id1411845730
}

final apiConst = ApiConst();
