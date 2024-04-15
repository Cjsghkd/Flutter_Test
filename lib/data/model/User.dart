import 'package:json_annotation/json_annotation.dart';
import 'Item.dart';

part 'User.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  @JsonKey(name: "total_count")
  int? totalCount;
  @JsonKey(name: "incomplete_results")
  bool? incompleteResults;
  List<Item>? items;

  User({
    this.totalCount,
    this.incompleteResults,
    this.items
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.empty() {
    return User(totalCount: -1, incompleteResults: false, items: []);
  }
}
