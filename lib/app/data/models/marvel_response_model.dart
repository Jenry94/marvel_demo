// Modelo principal
class MarvelResponse {
  final int code;
  final String status;
  final String copyright;
  final String attributionText;
  final String attributionHTML;
  final String etag;
  final Data data;

  MarvelResponse({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHTML,
    required this.etag,
    required this.data,
  });

  factory MarvelResponse.fromJson(Map<String, dynamic> json) => MarvelResponse(
    code: json['code'],
    status: json['status'],
    copyright: json['copyright'],
    attributionText: json['attributionText'],
    attributionHTML: json['attributionHTML'],
    etag: json['etag'],
    data: Data.fromJson(json['data']),
  );
}

class Data {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<Character> results;

  Data({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    offset: json['offset'],
    limit: json['limit'],
    total: json['total'],
    count: json['count'],
    results: List<Character>.from(json['results'].map((x) => Character.fromJson(x))),
  );
}

class Character {
  final int id;
  final String name;
  final String description;
  final String modified;
  final Thumbnail thumbnail;
  final String resourceURI;
  final ComicList comics;
  final SeriesList series;
  final StoryList stories;
  final EventList events;
  final List<Url> urls;

  Character({
    required this.id,
    required this.name,
    required this.description,
    required this.modified,
    required this.thumbnail,
    required this.resourceURI,
    required this.comics,
    required this.series,
    required this.stories,
    required this.events,
    required this.urls,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
    id: json['id'],
    name: json['name'],
    description: json['description'],
    modified: json['modified'],
    thumbnail: Thumbnail.fromJson(json['thumbnail']),
    resourceURI: json['resourceURI'],
    comics: ComicList.fromJson(json['comics']),
    series: SeriesList.fromJson(json['series']),
    stories: StoryList.fromJson(json['stories']),
    events: EventList.fromJson(json['events']),
    urls: List<Url>.from(json['urls'].map((x) => Url.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'modified': modified,
    'thumbnail': thumbnail.toJson(),
    'resourceURI': resourceURI,
    'comics': comics.toJson(),
    'series': series.toJson(),
    'stories': stories.toJson(),
    'events': events.toJson(),
    'urls': urls.map((x) => x.toJson()).toList(),
  };
}

class Thumbnail {
  final String path;
  final String extension;

  Thumbnail({required this.path, required this.extension});

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
    path: json['path'],
    extension: json['extension'],
  );

  Map<String, dynamic> toJson() => {
    'path': path,
    'extension': extension,
  };
}

class ComicList {
  final int available;
  final String collectionURI;
  final List<ComicSummary> items;
  final int returned;

  ComicList({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });

  factory ComicList.fromJson(Map<String, dynamic> json) => ComicList(
    available: json['available'],
    collectionURI: json['collectionURI'],
    items: List<ComicSummary>.from(json['items'].map((x) => ComicSummary.fromJson(x))),
    returned: json['returned'],
  );

  Map<String, dynamic> toJson() => {
    'available': available,
    'collectionURI': collectionURI,
    'items': items.map((x) => x.toJson()).toList(),
    'returned': returned,
  };
}

class ComicSummary {
  final String resourceURI;
  final String name;

  ComicSummary({required this.resourceURI, required this.name});

  factory ComicSummary.fromJson(Map<String, dynamic> json) => ComicSummary(
    resourceURI: json['resourceURI'],
    name: json['name'],
  );

  Map<String, dynamic> toJson() => {
    'resourceURI': resourceURI,
    'name': name,
  };
}

class SeriesList {
  final int available;
  final String collectionURI;
  final List<SeriesSummary> items;
  final int returned;

  SeriesList({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });

  factory SeriesList.fromJson(Map<String, dynamic> json) => SeriesList(
    available: json['available'],
    collectionURI: json['collectionURI'],
    items: List<SeriesSummary>.from(json['items'].map((x) => SeriesSummary.fromJson(x))),
    returned: json['returned'],
  );

  Map<String, dynamic> toJson() => {
    'available': available,
    'collectionURI': collectionURI,
    'items': items.map((x) => x.toJson()).toList(),
    'returned': returned,
  };
}

class SeriesSummary {
  final String resourceURI;
  final String name;

  SeriesSummary({required this.resourceURI, required this.name});

  factory SeriesSummary.fromJson(Map<String, dynamic> json) => SeriesSummary(
    resourceURI: json['resourceURI'],
    name: json['name'],
  );

  Map<String, dynamic> toJson() => {
    'resourceURI': resourceURI,
    'name': name,
  };
}

class StoryList {
  final int available;
  final String collectionURI;
  final List<StorySummary> items;
  final int returned;

  StoryList({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });

  factory StoryList.fromJson(Map<String, dynamic> json) => StoryList(
    available: json['available'],
    collectionURI: json['collectionURI'],
    items: List<StorySummary>.from(json['items'].map((x) => StorySummary.fromJson(x))),
    returned: json['returned'],
  );

  Map<String, dynamic> toJson() => {
    'available': available,
    'collectionURI': collectionURI,
    'items': items.map((x) => x.toJson()).toList(),
    'returned': returned,
  };
}

class StorySummary {
  final String resourceURI;
  final String name;
  final String type;

  StorySummary({
    required this.resourceURI,
    required this.name,
    required this.type,
  });

  factory StorySummary.fromJson(Map<String, dynamic> json) => StorySummary(
    resourceURI: json['resourceURI'],
    name: json['name'],
    type: json['type'],
  );

  Map<String, dynamic> toJson() => {
    'resourceURI': resourceURI,
    'name': name,
    'type': type,
  };
}

class EventList {
  final int available;
  final String collectionURI;
  final List<EventSummary> items;
  final int returned;

  EventList({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });

  factory EventList.fromJson(Map<String, dynamic> json) => EventList(
    available: json['available'],
    collectionURI: json['collectionURI'],
    items: List<EventSummary>.from(json['items'].map((x) => EventSummary.fromJson(x))),
    returned: json['returned'],
  );

  Map<String, dynamic> toJson() => {
    'available': available,
    'collectionURI': collectionURI,
    'items': List<dynamic>.from(items.map((x) => x.toJson())),
    'returned': returned,
  };
}

class EventSummary {
  final String resourceURI;
  final String name;

  EventSummary({required this.resourceURI, required this.name});

  factory EventSummary.fromJson(Map<String, dynamic> json) => EventSummary(
    resourceURI: json['resourceURI'],
    name: json['name'],
  );

  Map<String, dynamic> toJson() => {
    'resourceURI': resourceURI,
    'name': name,
  };
}

class Url {
  final String type;
  final String url;

  Url({required this.type, required this.url});

  factory Url.fromJson(Map<String, dynamic> json) => Url(
    type: json['type'],
    url: json['url'],
  );

   Map<String, dynamic> toJson() => {
    'type': type,
    'url': url,
  };
}
