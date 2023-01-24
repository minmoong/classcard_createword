import 'package:json_annotation/json_annotation.dart';

part 'createword_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SaveSet {
  String result;
  String msg;

  SaveSet({
    required this.result,
    required this.msg,
  });

  factory SaveSet.fromJson(Map<String, dynamic> json) =>
      _$SaveSetFromJson(json);

  Map<String, dynamic> toJson() => _$SaveSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SaveCard2 {
  String result;
  List<dynamic> msg;

  SaveCard2({
    required this.result,
    required this.msg,
  });

  factory SaveCard2.fromJson(Map<String, dynamic> json) =>
      _$SaveCard2FromJson(json);

  Map<String, dynamic> toJson() => _$SaveCard2ToJson(this);
}
