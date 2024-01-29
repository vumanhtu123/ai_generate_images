class Images {
  List<ImagesModel>? images;

  Images({this.images});

  Images.fromJson(Map<String, dynamic> json) {
    if (json['images'] != null) {
      images = <ImagesModel>[];
      json['images'].forEach((v) {
        images!.add(ImagesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ImagesModel {
  String? id;
  String? gallery;
  String? src;
  String? srcSmall;
  String? prompt;
  num? width;
  num? height;
  String? seed;
  bool? grid;
  String? model;
  int? guidance;
  String? promptid;
  bool? nsfw;

  ImagesModel(
      {this.id,
        this.gallery,
        this.src,
        this.srcSmall,
        this.prompt,
        this.width,
        this.height,
        this.seed,
        this.grid,
        this.model,
        this.guidance,
        this.promptid,
        this.nsfw});

  ImagesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gallery = json['gallery'];
    src = json['src'];
    srcSmall = json['srcSmall'];
    prompt = json['prompt'];
    width = json['width'];
    height = json['height'];
    seed = json['seed'];
    grid = json['grid'];
    model = json['model'];
    guidance = json['guidance'];
    promptid = json['promptid'];
    nsfw = json['nsfw'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['gallery'] = gallery;
    data['src'] = src;
    data['srcSmall'] = srcSmall;
    data['prompt'] = prompt;
    data['width'] = width;
    data['height'] = height;
    data['seed'] = seed;
    data['grid'] = grid;
    data['model'] = model;
    data['guidance'] = guidance;
    data['promptid'] = promptid;
    data['nsfw'] = nsfw;
    return data;
  }
}
