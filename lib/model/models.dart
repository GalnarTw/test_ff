class Anime{
List<Data>? data;
Anime({this.data});
Anime.fromJson(Map<String, dynamic>json){
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
}
}


class Data {
  int? malId;
  String? url;
  String? title;
  int? episodes;
  double?  score;
  int?  year;
  String?genres;
  Data({
    this.malId,
    this.url,
    this.title,

    this.episodes,
    this.score,
    this.genres,
    this.year,
  });
  Data.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    title = json['title'];
    episodes = json['episodes'];
    score = json['score'];
    year = json['year'];

  }
}

class Images {
  Jpg? jpg;
  Jpg? webp;
  Images({this.jpg, this.webp});

  Images.fromJson(Map<String, dynamic> json) {
    jpg = json['jpg'] != null ? new Jpg.fromJson(json['jpg']) : null;
    webp = json['webp'] != null ? new Jpg.fromJson(json['webp']) : null;
  }}
  class Jpg {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Jpg({this.imageUrl, this.smallImageUrl, this.largeImageUrl});

  Jpg.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    largeImageUrl = json['large_image_url'];
  }}