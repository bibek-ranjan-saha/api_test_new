import 'dart:convert';

import 'package:flutter/cupertino.dart';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    @required this.node,
  });

  WelcomeNode node;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    node: WelcomeNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class WelcomeNode {
  WelcomeNode({
    @required this.typename,
    @required this.id,
    @required this.shortcode,
    @required this.dimensions,
    @required this.displayUrl,
    @required this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    @required this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    @required this.mediaPreview,
    @required this.owner,
    @required this.isVideo,
    @required this.hasUpcomingEvent,
    @required this.accessibilityCaption,
    @required this.edgeMediaToCaption,
    @required this.edgeMediaToComment,
    @required this.commentsDisabled,
    @required this.takenAtTimestamp,
    @required this.edgeLikedBy,
    @required this.edgeMediaPreviewLike,
    @required this.location,
    @required this.thumbnailSrc,
    @required this.thumbnailResources,
  });

  String typename;
  String id;
  String shortcode;
  Dimensions dimensions;
  String displayUrl;
  EdgeMediaToTaggedUser edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String mediaPreview;
  Owner owner;
  bool isVideo;
  bool hasUpcomingEvent;
  String accessibilityCaption;
  EdgeMediaToCaption edgeMediaToCaption;
  Edge edgeMediaToComment;
  bool commentsDisabled;
  int takenAtTimestamp;
  Edge edgeLikedBy;
  Edge edgeMediaPreviewLike;
  Location location;
  String thumbnailSrc;
  List<ThumbnailResource> thumbnailResources;

  factory WelcomeNode.fromJson(Map<String, dynamic> json) => WelcomeNode(
    typename: json["__typename"],
    id: json["id"],
    shortcode: json["shortcode"],
    dimensions: Dimensions.fromJson(json["dimensions"]),
    displayUrl: json["display_url"],
    edgeMediaToTaggedUser: EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]),
    factCheckOverallRating: json["fact_check_overall_rating"],
    factCheckInformation: json["fact_check_information"],
    gatingInfo: json["gating_info"],
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    mediaOverlayInfo: json["media_overlay_info"],
    mediaPreview: json["media_preview"],
    owner: Owner.fromJson(json["owner"]),
    isVideo: json["is_video"],
    hasUpcomingEvent: json["has_upcoming_event"],
    accessibilityCaption: json["accessibility_caption"],
    edgeMediaToCaption: EdgeMediaToCaption.fromJson(json["edge_media_to_caption"]),
    edgeMediaToComment: Edge.fromJson(json["edge_media_to_comment"]),
    commentsDisabled: json["comments_disabled"],
    takenAtTimestamp: json["taken_at_timestamp"],
    edgeLikedBy: Edge.fromJson(json["edge_liked_by"]),
    edgeMediaPreviewLike: Edge.fromJson(json["edge_media_preview_like"]),
    location: Location.fromJson(json["location"]),
    thumbnailResources: List<ThumbnailResource>.from(json["thumbnail_resources"].map((x) => ThumbnailResource.fromJson(x))),
    thumbnailSrc: json["thumbnail_src"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "id": id,
    "shortcode": shortcode,
    "dimensions": dimensions.toJson(),
    "display_url": displayUrl,
    "edge_media_to_tagged_user": edgeMediaToTaggedUser.toJson(),
    "fact_check_overall_rating": factCheckOverallRating,
    "fact_check_information": factCheckInformation,
    "gating_info": gatingInfo,
    "sharing_friction_info": sharingFrictionInfo.toJson(),
    "media_overlay_info": mediaOverlayInfo,
    "media_preview": mediaPreview,
    "owner": owner.toJson(),
    "is_video": isVideo,
    "has_upcoming_event": hasUpcomingEvent,
    "accessibility_caption": accessibilityCaption,
    "edge_media_to_caption": edgeMediaToCaption.toJson(),
    "edge_media_to_comment": edgeMediaToComment.toJson(),
    "comments_disabled": commentsDisabled,
    "taken_at_timestamp": takenAtTimestamp,
    "edge_liked_by": edgeLikedBy.toJson(),
    "edge_media_preview_like": edgeMediaPreviewLike.toJson(),
    "location": location == null ? null : location.toJson(),
    "thumbnail_src": thumbnailSrc,
    "thumbnail_resources": List<dynamic>.from(thumbnailResources.map((x) => x.toJson())),
  };
}

class Dimensions {
  Dimensions({
    @required this.height,
    @required this.width,
  });

  int height;
  int width;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    height: json["height"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "width": width,
  };
}

class Edge {
  Edge({
    @required this.count,
  });

  int count;

  factory Edge.fromJson(Map<String, dynamic> json) => Edge(
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
  };
}

class EdgeMediaToCaption {
  EdgeMediaToCaption({
    @required this.edges,
  });

  List<EdgeMediaToCaptionEdge> edges;

  factory EdgeMediaToCaption.fromJson(Map<String, dynamic> json) => EdgeMediaToCaption(
    edges: List<EdgeMediaToCaptionEdge>.from(json["edges"].map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeMediaToCaptionEdge {
  EdgeMediaToCaptionEdge({
    @required this.node,
  });

  PurpleNode node;

  factory EdgeMediaToCaptionEdge.fromJson(Map<String, dynamic> json) => EdgeMediaToCaptionEdge(
    node: PurpleNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class PurpleNode {
  PurpleNode({
    @required this.text,
  });

  String text;

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
  };
}

class EdgeMediaToTaggedUser {
  EdgeMediaToTaggedUser({
    @required this.edges,
  });

  List<EdgeMediaToTaggedUserEdge> edges;

  factory EdgeMediaToTaggedUser.fromJson(Map<String, dynamic> json) => EdgeMediaToTaggedUser(
    edges: List<EdgeMediaToTaggedUserEdge>.from(json["edges"].map((x) => EdgeMediaToTaggedUserEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeMediaToTaggedUserEdge {
  EdgeMediaToTaggedUserEdge({
    @required this.node,
  });

  FluffyNode node;

  factory EdgeMediaToTaggedUserEdge.fromJson(Map<String, dynamic> json) => EdgeMediaToTaggedUserEdge(
    node: FluffyNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class FluffyNode {
  FluffyNode({
    @required this.user,
    @required this.x,
    @required this.y,
  });

  User user;
  double x;
  double y;

  factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
    user: User.fromJson(json["user"]),
    x: json["x"].toDouble(),
    y: json["y"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "x": x,
    "y": y,
  };
}

class User {
  User({
    @required this.fullName,
    @required this.id,
    @required this.isVerified,
    @required this.profilePicUrl,
    @required this.username,
  });

  String fullName;
  String id;
  bool isVerified;
  String profilePicUrl;
  String username;

  factory User.fromJson(Map<String, dynamic> json) => User(
    fullName: json["full_name"],
    id: json["id"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
  );


  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "id": id,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
  };
}

class Location {
  Location({
    @required this.id,
    @required this.hasPublicPage,
    @required this.name,
    @required this.slug,
  });

  String id;
  bool hasPublicPage;
  String name;
  String slug;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    hasPublicPage: json["has_public_page"],
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "has_public_page": hasPublicPage,
    "name": name,
    "slug": slug,
  };
}

class Owner {
  Owner({
    @required this.id,
    @required this.username,
  });

  String id;
  String username;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    id: json["id"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
  };
}

class SharingFrictionInfo {
  SharingFrictionInfo({
    @required this.shouldHaveSharingFriction,
    this.bloksAppUrl,
  });

  bool shouldHaveSharingFriction;
  dynamic bloksAppUrl;

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) => SharingFrictionInfo(
    shouldHaveSharingFriction: json["should_have_sharing_friction"],
    bloksAppUrl: json["bloks_app_url"],
  );

  Map<String, dynamic> toJson() => {
    "should_have_sharing_friction": shouldHaveSharingFriction,
    "bloks_app_url": bloksAppUrl,
  };
}

class ThumbnailResource {
  ThumbnailResource({
    @required this.src,
    @required this.configWidth,
    @required this.configHeight,
  });

  String src;
  int configWidth;
  int configHeight;

  factory ThumbnailResource.fromJson(Map<String, dynamic> json) => ThumbnailResource(
    src: json["src"],
    configWidth: json["config_width"],
    configHeight: json["config_height"],
  );

  Map<String, dynamic> toJson() => {
    "src": src,
    "config_width": configWidth,
    "config_height": configHeight,
  };
}