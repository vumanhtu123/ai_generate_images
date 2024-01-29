
import '../../common/api_const.dart';

class ImageRequest{
  String? prompt;

  ImageRequest({this.prompt});
  Map<String, dynamic> toMap() {
    return {
      "prompt": prompt,
    };
  }

  String toApi() => apiConst.endPoint(prompt);
}