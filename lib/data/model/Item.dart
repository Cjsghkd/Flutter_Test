import 'package:json_annotation/json_annotation.dart';

part 'Item.g.dart';

@JsonSerializable()
class Item {
  String? login;
  int? id;
  @JsonKey(name: "node_id")
  String? nodeId;
  @JsonKey(name: "avatar_url")
  String? avatarUrl;
  @JsonKey(name: "gravatar_id")
  String? gravatarId;
  String? url;
  @JsonKey(name: "html_url")
  String? htmlUrl;
  @JsonKey(name: "followers_url")
  String? followersUrl;
  @JsonKey(name: "following_url")
  String? followingUrl;
  @JsonKey(name: "gists_url")
  String? gistsUrl;
  @JsonKey(name: "starred_url")
  String? starredUrl;
  @JsonKey(name: "subscriptions_url")
  String? subscriptionUrl;
  @JsonKey(name: "organization_url")
  String? organizationUrl;
  @JsonKey(name: "repos_url")
  String? reposUrl;
  @JsonKey(name: "events_url")
  String? eventsUrl;
  @JsonKey(name: "received_events_url")
  String? receivedEventsUrl;
  String? type;
  @JsonKey(name: "site_admin")
  bool? siteAdmin;
  double? score;

  Item({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionUrl,
    this.organizationUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.score
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}