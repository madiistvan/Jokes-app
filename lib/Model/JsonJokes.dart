class JsonJokes {
  bool? error;
  String? category;
  String? type;
  String? setup;
  String? delivery;
  Flags? flags;
  int? id;
  bool? safe;
  String? lang;

  JsonJokes(
      {
        required this.error,
        required this.category,
        required this.type,
        required this.setup,
        required this.delivery,
        required this.flags,
        required this.id,
        required this.safe,
        required this.lang
      }
    );

  JsonJokes.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    category = json['category'];
    type = json['type'];
    setup = json['setup'];
    delivery = json['delivery'];
    flags = (json['flags'] != null ? new Flags.fromJson(json['flags']) : null)!;
    id = json['id'];
    safe = json['safe'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['category'] = this.category;
    data['type'] = this.type;
    data['setup'] = this.setup;
    data['delivery'] = this.delivery;
    if (this.flags != null) {
      data['flags'] = this.flags!.toJson();
    }
    data['id'] = this.id;
    data['safe'] = this.safe;
    data['lang'] = this.lang;
    return data;
  }
}

class Flags {
  bool? nsfw;
  bool? religious;
  bool? political;
  bool? racist;
  bool? sexist;
  bool? explicit;

  Flags(
      {required this.nsfw,
        required this.religious,
        required this.political,
        required this.racist,
        required this.sexist,
        required this.explicit});

  Flags.fromJson(Map<String, dynamic> json) {
    nsfw = json['nsfw'];
    religious = json['religious'];
    political = json['political'];
    racist = json['racist'];
    sexist = json['sexist'];
    explicit = json['explicit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nsfw'] = this.nsfw;
    data['religious'] = this.religious;
    data['political'] = this.political;
    data['racist'] = this.racist;
    data['sexist'] = this.sexist;
    data['explicit'] = this.explicit;
    return data;
  }
}