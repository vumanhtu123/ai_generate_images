

import '../../common/api_const.dart';
import '../../model/image_model.dart';
import '../networking/api_service.dart';

mixin ImageRepositories {
  Future<Images> getImages(String prompt) async {
    final map = await apiService.getM(apiConst.endPoint(prompt), null);
    return Images.fromJson(map);
  }
}
