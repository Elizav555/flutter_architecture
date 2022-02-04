import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  const factory Person({
    @Default(0) int id,
    @Default("Bob") String name,
  }) = _Person;
}
