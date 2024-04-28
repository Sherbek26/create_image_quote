class ImageModel {
  ImageModel({
    required this.id,
    required this.slug,
    required this.alternativeSlugs,
    required this.createdAt,
    required this.updatedAt,
    required this.promotedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    required this.breadcrumbs,
    required this.urls,
    required this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    required this.sponsorship,
    required this.topicSubmissions,
    required this.assetType,
    required this.user,
    required this.exif,
    required this.location,
    required this.meta,
    required this.publicDomain,
    required this.tags,
    required this.tagsPreview,
    required this.views,
    required this.downloads,
    required this.topics,
  });

  final String? id;
  final String? slug;
  final AlternativeSlugs? alternativeSlugs;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final dynamic description;
  final String? altDescription;
  final List<dynamic> breadcrumbs;
  final Urls? urls;
  final ImageModelLinks? links;
  final int? likes;
  final bool? likedByUser;
  final List<dynamic> currentUserCollections;
  final dynamic sponsorship;
  final ImageModelTopicSubmissions? topicSubmissions;
  final String? assetType;
  final User? user;
  final Exif? exif;
  final Location? location;
  final Meta? meta;
  final bool? publicDomain;
  final List<Tag> tags;
  final List<TagsPreview> tagsPreview;
  final int? views;
  final int? downloads;
  final List<dynamic> topics;

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json["id"],
      slug: json["slug"],
      alternativeSlugs: json["alternative_slugs"] == null
          ? null
          : AlternativeSlugs.fromJson(json["alternative_slugs"]),
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      promotedAt: DateTime.tryParse(json["promoted_at"] ?? ""),
      width: json["width"],
      height: json["height"],
      color: json["color"],
      blurHash: json["blur_hash"],
      description: json["description"],
      altDescription: json["alt_description"],
      breadcrumbs: json["breadcrumbs"] == null
          ? []
          : List<dynamic>.from(json["breadcrumbs"]!.map((x) => x)),
      urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
      links: json["links"] == null
          ? null
          : ImageModelLinks.fromJson(json["links"]),
      likes: json["likes"],
      likedByUser: json["liked_by_user"],
      currentUserCollections: json["current_user_collections"] == null
          ? []
          : List<dynamic>.from(json["current_user_collections"]!.map((x) => x)),
      sponsorship: json["sponsorship"],
      topicSubmissions: json["topic_submissions"] == null
          ? null
          : ImageModelTopicSubmissions.fromJson(json["topic_submissions"]),
      assetType: json["asset_type"],
      user: json["user"] == null ? null : User.fromJson(json["user"]),
      exif: json["exif"] == null ? null : Exif.fromJson(json["exif"]),
      location:
          json["location"] == null ? null : Location.fromJson(json["location"]),
      meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      publicDomain: json["public_domain"],
      tags: json["tags"] == null
          ? []
          : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
      tagsPreview: json["tags_preview"] == null
          ? []
          : List<TagsPreview>.from(
              json["tags_preview"]!.map((x) => TagsPreview.fromJson(x))),
      views: json["views"],
      downloads: json["downloads"],
      topics: json["topics"] == null
          ? []
          : List<dynamic>.from(json["topics"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "alternative_slugs": alternativeSlugs?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "promoted_at": promotedAt?.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "breadcrumbs": breadcrumbs.map((x) => x).toList(),
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections":
            currentUserCollections.map((x) => x).toList(),
        "sponsorship": sponsorship,
        "topic_submissions": topicSubmissions?.toJson(),
        "asset_type": assetType,
        "user": user?.toJson(),
        "exif": exif?.toJson(),
        "location": location?.toJson(),
        "meta": meta?.toJson(),
        "public_domain": publicDomain,
        "tags": tags.map((x) => x?.toJson()).toList(),
        "tags_preview": tagsPreview.map((x) => x?.toJson()).toList(),
        "views": views,
        "downloads": downloads,
        "topics": topics.map((x) => x).toList(),
      };
}

class AlternativeSlugs {
  AlternativeSlugs({
    required this.en,
    required this.es,
    required this.ja,
    required this.fr,
    required this.it,
    required this.ko,
    required this.de,
    required this.pt,
  });

  final String? en;
  final String? es;
  final String? ja;
  final String? fr;
  final String? it;
  final String? ko;
  final String? de;
  final String? pt;

  factory AlternativeSlugs.fromJson(Map<String, dynamic> json) {
    return AlternativeSlugs(
      en: json["en"],
      es: json["es"],
      ja: json["ja"],
      fr: json["fr"],
      it: json["it"],
      ko: json["ko"],
      de: json["de"],
      pt: json["pt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "en": en,
        "es": es,
        "ja": ja,
        "fr": fr,
        "it": it,
        "ko": ko,
        "de": de,
        "pt": pt,
      };
}

class Exif {
  Exif({
    required this.make,
    required this.model,
    required this.name,
    required this.exposureTime,
    required this.aperture,
    required this.focalLength,
    required this.iso,
  });

  final String? make;
  final String? model;
  final String? name;
  final String? exposureTime;
  final String? aperture;
  final String? focalLength;
  final int? iso;

  factory Exif.fromJson(Map<String, dynamic> json) {
    return Exif(
      make: json["make"],
      model: json["model"],
      name: json["name"],
      exposureTime: json["exposure_time"],
      aperture: json["aperture"],
      focalLength: json["focal_length"],
      iso: json["iso"],
    );
  }

  Map<String, dynamic> toJson() => {
        "make": make,
        "model": model,
        "name": name,
        "exposure_time": exposureTime,
        "aperture": aperture,
        "focal_length": focalLength,
        "iso": iso,
      };
}

class ImageModelLinks {
  ImageModelLinks({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  final String? self;
  final String? html;
  final String? download;
  final String? downloadLocation;

  factory ImageModelLinks.fromJson(Map<String, dynamic> json) {
    return ImageModelLinks(
      self: json["self"],
      html: json["html"],
      download: json["download"],
      downloadLocation: json["download_location"],
    );
  }

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class Location {
  Location({
    required this.name,
    required this.city,
    required this.country,
    required this.position,
  });

  final dynamic name;
  final dynamic city;
  final dynamic country;
  final Position? position;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json["name"],
      city: json["city"],
      country: json["country"],
      position:
          json["position"] == null ? null : Position.fromJson(json["position"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "city": city,
        "country": country,
        "position": position?.toJson(),
      };
}

class Position {
  Position({
    required this.latitude,
    required this.longitude,
  });

  final double? latitude;
  final double? longitude;

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      latitude: json["latitude"],
      longitude: json["longitude"],
    );
  }

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}

class Meta {
  Meta({
    required this.index,
  });

  final bool? index;

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      index: json["index"],
    );
  }

  Map<String, dynamic> toJson() => {
        "index": index,
      };
}

class Tag {
  Tag({
    required this.type,
    required this.title,
    required this.source,
  });

  final String? type;
  final String? title;
  final TagSource? source;

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      type: json["type"],
      title: json["title"],
      source:
          json["source"] == null ? null : TagSource.fromJson(json["source"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type,
        "title": title,
        "source": source?.toJson(),
      };
}

class TagSource {
  TagSource({
    required this.ancestry,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.metaTitle,
    required this.metaDescription,
    required this.coverPhoto,
  });

  final Ancestry? ancestry;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? metaTitle;
  final String? metaDescription;
  final PurpleCoverPhoto? coverPhoto;

  factory TagSource.fromJson(Map<String, dynamic> json) {
    return TagSource(
      ancestry:
          json["ancestry"] == null ? null : Ancestry.fromJson(json["ancestry"]),
      title: json["title"],
      subtitle: json["subtitle"],
      description: json["description"],
      metaTitle: json["meta_title"],
      metaDescription: json["meta_description"],
      coverPhoto: json["cover_photo"] == null
          ? null
          : PurpleCoverPhoto.fromJson(json["cover_photo"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "ancestry": ancestry?.toJson(),
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "cover_photo": coverPhoto?.toJson(),
      };
}

class Ancestry {
  Ancestry({
    required this.type,
    required this.category,
    required this.subcategory,
  });

  final Category? type;
  final Category? category;
  final Category? subcategory;

  factory Ancestry.fromJson(Map<String, dynamic> json) {
    return Ancestry(
      type: json["type"] == null ? null : Category.fromJson(json["type"]),
      category:
          json["category"] == null ? null : Category.fromJson(json["category"]),
      subcategory: json["subcategory"] == null
          ? null
          : Category.fromJson(json["subcategory"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type?.toJson(),
        "category": category?.toJson(),
        "subcategory": subcategory?.toJson(),
      };
}

class Category {
  Category({
    required this.slug,
    required this.prettySlug,
  });

  final String? slug;
  final String? prettySlug;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      slug: json["slug"],
      prettySlug: json["pretty_slug"],
    );
  }

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "pretty_slug": prettySlug,
      };
}

class PurpleCoverPhoto {
  PurpleCoverPhoto({
    required this.id,
    required this.slug,
    required this.alternativeSlugs,
    required this.createdAt,
    required this.updatedAt,
    required this.promotedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    required this.breadcrumbs,
    required this.urls,
    required this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    required this.sponsorship,
    required this.topicSubmissions,
    required this.assetType,
    required this.premium,
    required this.plus,
    required this.user,
  });

  final String? id;
  final String? slug;
  final AlternativeSlugs? alternativeSlugs;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final String? description;
  final String? altDescription;
  final List<Breadcrumb> breadcrumbs;
  final Urls? urls;
  final ImageModelLinks? links;
  final int? likes;
  final bool? likedByUser;
  final List<dynamic> currentUserCollections;
  final dynamic sponsorship;
  final PurpleTopicSubmissions? topicSubmissions;
  final String? assetType;
  final bool? premium;
  final bool? plus;
  final User? user;

  factory PurpleCoverPhoto.fromJson(Map<String, dynamic> json) {
    return PurpleCoverPhoto(
      id: json["id"],
      slug: json["slug"],
      alternativeSlugs: json["alternative_slugs"] == null
          ? null
          : AlternativeSlugs.fromJson(json["alternative_slugs"]),
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      promotedAt: DateTime.tryParse(json["promoted_at"] ?? ""),
      width: json["width"],
      height: json["height"],
      color: json["color"],
      blurHash: json["blur_hash"],
      description: json["description"],
      altDescription: json["alt_description"],
      breadcrumbs: json["breadcrumbs"] == null
          ? []
          : List<Breadcrumb>.from(
              json["breadcrumbs"]!.map((x) => Breadcrumb.fromJson(x))),
      urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
      links: json["links"] == null
          ? null
          : ImageModelLinks.fromJson(json["links"]),
      likes: json["likes"],
      likedByUser: json["liked_by_user"],
      currentUserCollections: json["current_user_collections"] == null
          ? []
          : List<dynamic>.from(json["current_user_collections"]!.map((x) => x)),
      sponsorship: json["sponsorship"],
      topicSubmissions: json["topic_submissions"] == null
          ? null
          : PurpleTopicSubmissions.fromJson(json["topic_submissions"]),
      assetType: json["asset_type"],
      premium: json["premium"],
      plus: json["plus"],
      user: json["user"] == null ? null : User.fromJson(json["user"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "alternative_slugs": alternativeSlugs?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "promoted_at": promotedAt?.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "breadcrumbs": breadcrumbs.map((x) => x?.toJson()).toList(),
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections":
            currentUserCollections.map((x) => x).toList(),
        "sponsorship": sponsorship,
        "topic_submissions": topicSubmissions?.toJson(),
        "asset_type": assetType,
        "premium": premium,
        "plus": plus,
        "user": user?.toJson(),
      };
}

class Breadcrumb {
  Breadcrumb({
    required this.slug,
    required this.title,
    required this.index,
    required this.type,
  });

  final String? slug;
  final String? title;
  final int? index;
  final String? type;

  factory Breadcrumb.fromJson(Map<String, dynamic> json) {
    return Breadcrumb(
      slug: json["slug"],
      title: json["title"],
      index: json["index"],
      type: json["type"],
    );
  }

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "title": title,
        "index": index,
        "type": type,
      };
}

class PurpleTopicSubmissions {
  PurpleTopicSubmissions({
    required this.nature,
    required this.wallpapers,
    required this.spirituality,
    required this.currentEvents,
    required this.texturesPatterns,
  });

  final CurrentEvents? nature;
  final CurrentEvents? wallpapers;
  final CurrentEvents? spirituality;
  final CurrentEvents? currentEvents;
  final CurrentEvents? texturesPatterns;

  factory PurpleTopicSubmissions.fromJson(Map<String, dynamic> json) {
    return PurpleTopicSubmissions(
      nature: json["nature"] == null
          ? null
          : CurrentEvents.fromJson(json["nature"]),
      wallpapers: json["wallpapers"] == null
          ? null
          : CurrentEvents.fromJson(json["wallpapers"]),
      spirituality: json["spirituality"] == null
          ? null
          : CurrentEvents.fromJson(json["spirituality"]),
      currentEvents: json["current-events"] == null
          ? null
          : CurrentEvents.fromJson(json["current-events"]),
      texturesPatterns: json["textures-patterns"] == null
          ? null
          : CurrentEvents.fromJson(json["textures-patterns"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "nature": nature?.toJson(),
        "wallpapers": wallpapers?.toJson(),
        "spirituality": spirituality?.toJson(),
        "current-events": currentEvents?.toJson(),
        "textures-patterns": texturesPatterns?.toJson(),
      };
}

class CurrentEvents {
  CurrentEvents({
    required this.status,
    required this.approvedOn,
  });

  final String? status;
  final DateTime? approvedOn;

  factory CurrentEvents.fromJson(Map<String, dynamic> json) {
    return CurrentEvents(
      status: json["status"],
      approvedOn: DateTime.tryParse(json["approved_on"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "status": status,
        "approved_on": approvedOn?.toIso8601String(),
      };
}

class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;
  final String? smallS3;

  factory Urls.fromJson(Map<String, dynamic> json) {
    return Urls(
      raw: json["raw"],
      full: json["full"],
      regular: json["regular"],
      small: json["small"],
      thumb: json["thumb"],
      smallS3: json["small_s3"],
    );
  }

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}

class User {
  User({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
    required this.links,
    required this.profileImage,
    required this.instagramUsername,
    required this.totalCollections,
    required this.totalLikes,
    required this.totalPhotos,
    required this.totalPromotedPhotos,
    required this.totalIllustrations,
    required this.totalPromotedIllustrations,
    required this.acceptedTos,
    required this.forHire,
    required this.social,
  });

  final String? id;
  final DateTime? updatedAt;
  final String? username;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? twitterUsername;
  final String? portfolioUrl;
  final String? bio;
  final String? location;
  final UserLinks? links;
  final ProfileImage? profileImage;
  final String? instagramUsername;
  final int? totalCollections;
  final int? totalLikes;
  final int? totalPhotos;
  final int? totalPromotedPhotos;
  final int? totalIllustrations;
  final int? totalPromotedIllustrations;
  final bool? acceptedTos;
  final bool? forHire;
  final Social? social;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      username: json["username"],
      name: json["name"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      twitterUsername: json["twitter_username"],
      portfolioUrl: json["portfolio_url"],
      bio: json["bio"],
      location: json["location"],
      links: json["links"] == null ? null : UserLinks.fromJson(json["links"]),
      profileImage: json["profile_image"] == null
          ? null
          : ProfileImage.fromJson(json["profile_image"]),
      instagramUsername: json["instagram_username"],
      totalCollections: json["total_collections"],
      totalLikes: json["total_likes"],
      totalPhotos: json["total_photos"],
      totalPromotedPhotos: json["total_promoted_photos"],
      totalIllustrations: json["total_illustrations"],
      totalPromotedIllustrations: json["total_promoted_illustrations"],
      acceptedTos: json["accepted_tos"],
      forHire: json["for_hire"],
      social: json["social"] == null ? null : Social.fromJson(json["social"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "updated_at": updatedAt?.toIso8601String(),
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName,
        "twitter_username": twitterUsername,
        "portfolio_url": portfolioUrl,
        "bio": bio,
        "location": location,
        "links": links?.toJson(),
        "profile_image": profileImage?.toJson(),
        "instagram_username": instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "total_promoted_photos": totalPromotedPhotos,
        "total_illustrations": totalIllustrations,
        "total_promoted_illustrations": totalPromotedIllustrations,
        "accepted_tos": acceptedTos,
        "for_hire": forHire,
        "social": social?.toJson(),
      };
}

class UserLinks {
  UserLinks({
    required this.self,
    required this.html,
    required this.photos,
    required this.likes,
    required this.portfolio,
    required this.following,
    required this.followers,
  });

  final String? self;
  final String? html;
  final String? photos;
  final String? likes;
  final String? portfolio;
  final String? following;
  final String? followers;

  factory UserLinks.fromJson(Map<String, dynamic> json) {
    return UserLinks(
      self: json["self"],
      html: json["html"],
      photos: json["photos"],
      likes: json["likes"],
      portfolio: json["portfolio"],
      following: json["following"],
      followers: json["followers"],
    );
  }

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
        "following": following,
        "followers": followers,
      };
}

class ProfileImage {
  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  final String? small;
  final String? medium;
  final String? large;

  factory ProfileImage.fromJson(Map<String, dynamic> json) {
    return ProfileImage(
      small: json["small"],
      medium: json["medium"],
      large: json["large"],
    );
  }

  Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
      };
}

class Social {
  Social({
    required this.instagramUsername,
    required this.portfolioUrl,
    required this.twitterUsername,
    required this.paypalEmail,
  });

  final String? instagramUsername;
  final String? portfolioUrl;
  final String? twitterUsername;
  final dynamic paypalEmail;

  factory Social.fromJson(Map<String, dynamic> json) {
    return Social(
      instagramUsername: json["instagram_username"],
      portfolioUrl: json["portfolio_url"],
      twitterUsername: json["twitter_username"],
      paypalEmail: json["paypal_email"],
    );
  }

  Map<String, dynamic> toJson() => {
        "instagram_username": instagramUsername,
        "portfolio_url": portfolioUrl,
        "twitter_username": twitterUsername,
        "paypal_email": paypalEmail,
      };
}

class TagsPreview {
  TagsPreview({
    required this.type,
    required this.title,
    required this.source,
  });

  final String? type;
  final String? title;
  final TagsPreviewSource? source;

  factory TagsPreview.fromJson(Map<String, dynamic> json) {
    return TagsPreview(
      type: json["type"],
      title: json["title"],
      source: json["source"] == null
          ? null
          : TagsPreviewSource.fromJson(json["source"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type,
        "title": title,
        "source": source?.toJson(),
      };
}

class TagsPreviewSource {
  TagsPreviewSource({
    required this.ancestry,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.metaTitle,
    required this.metaDescription,
    required this.coverPhoto,
  });

  final Ancestry? ancestry;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? metaTitle;
  final String? metaDescription;
  final FluffyCoverPhoto? coverPhoto;

  factory TagsPreviewSource.fromJson(Map<String, dynamic> json) {
    return TagsPreviewSource(
      ancestry:
          json["ancestry"] == null ? null : Ancestry.fromJson(json["ancestry"]),
      title: json["title"],
      subtitle: json["subtitle"],
      description: json["description"],
      metaTitle: json["meta_title"],
      metaDescription: json["meta_description"],
      coverPhoto: json["cover_photo"] == null
          ? null
          : FluffyCoverPhoto.fromJson(json["cover_photo"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "ancestry": ancestry?.toJson(),
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "cover_photo": coverPhoto?.toJson(),
      };
}

class FluffyCoverPhoto {
  FluffyCoverPhoto({
    required this.id,
    required this.slug,
    required this.alternativeSlugs,
    required this.createdAt,
    required this.updatedAt,
    required this.promotedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    required this.breadcrumbs,
    required this.urls,
    required this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    required this.sponsorship,
    required this.topicSubmissions,
    required this.assetType,
    required this.premium,
    required this.plus,
    required this.user,
  });

  final String? id;
  final String? slug;
  final AlternativeSlugs? alternativeSlugs;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final String? description;
  final String? altDescription;
  final List<Breadcrumb> breadcrumbs;
  final Urls? urls;
  final ImageModelLinks? links;
  final int? likes;
  final bool? likedByUser;
  final List<dynamic> currentUserCollections;
  final dynamic sponsorship;
  final FluffyTopicSubmissions? topicSubmissions;
  final String? assetType;
  final bool? premium;
  final bool? plus;
  final User? user;

  factory FluffyCoverPhoto.fromJson(Map<String, dynamic> json) {
    return FluffyCoverPhoto(
      id: json["id"],
      slug: json["slug"],
      alternativeSlugs: json["alternative_slugs"] == null
          ? null
          : AlternativeSlugs.fromJson(json["alternative_slugs"]),
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      promotedAt: DateTime.tryParse(json["promoted_at"] ?? ""),
      width: json["width"],
      height: json["height"],
      color: json["color"],
      blurHash: json["blur_hash"],
      description: json["description"],
      altDescription: json["alt_description"],
      breadcrumbs: json["breadcrumbs"] == null
          ? []
          : List<Breadcrumb>.from(
              json["breadcrumbs"]!.map((x) => Breadcrumb.fromJson(x))),
      urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
      links: json["links"] == null
          ? null
          : ImageModelLinks.fromJson(json["links"]),
      likes: json["likes"],
      likedByUser: json["liked_by_user"],
      currentUserCollections: json["current_user_collections"] == null
          ? []
          : List<dynamic>.from(json["current_user_collections"]!.map((x) => x)),
      sponsorship: json["sponsorship"],
      topicSubmissions: json["topic_submissions"] == null
          ? null
          : FluffyTopicSubmissions.fromJson(json["topic_submissions"]),
      assetType: json["asset_type"],
      premium: json["premium"],
      plus: json["plus"],
      user: json["user"] == null ? null : User.fromJson(json["user"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "alternative_slugs": alternativeSlugs?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "promoted_at": promotedAt?.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "breadcrumbs": breadcrumbs.map((x) => x?.toJson()).toList(),
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections":
            currentUserCollections.map((x) => x).toList(),
        "sponsorship": sponsorship,
        "topic_submissions": topicSubmissions?.toJson(),
        "asset_type": assetType,
        "premium": premium,
        "plus": plus,
        "user": user?.toJson(),
      };
}

class FluffyTopicSubmissions {
  FluffyTopicSubmissions({
    required this.nature,
    required this.wallpapers,
  });

  final CurrentEvents? nature;
  final CurrentEvents? wallpapers;

  factory FluffyTopicSubmissions.fromJson(Map<String, dynamic> json) {
    return FluffyTopicSubmissions(
      nature: json["nature"] == null
          ? null
          : CurrentEvents.fromJson(json["nature"]),
      wallpapers: json["wallpapers"] == null
          ? null
          : CurrentEvents.fromJson(json["wallpapers"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "nature": nature?.toJson(),
        "wallpapers": wallpapers?.toJson(),
      };
}

class ImageModelTopicSubmissions {
  ImageModelTopicSubmissions({required this.json});
  final Map<String, dynamic> json;

  factory ImageModelTopicSubmissions.fromJson(Map<String, dynamic> json) {
    return ImageModelTopicSubmissions(json: json);
  }

  Map<String, dynamic> toJson() => {};
}
