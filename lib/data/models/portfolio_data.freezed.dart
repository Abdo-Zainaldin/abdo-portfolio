// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortfolioData {

 int get schemaVersion; Profile get profile; About get about; List<PortfolioStatistic> get statistics; List<Skill> get skills; List<PortfolioTool> get tools; List<Project> get projects; List<Experience> get experience; List<SocialLink> get socialLinks; Contact get contact;
/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioDataCopyWith<PortfolioData> get copyWith => _$PortfolioDataCopyWithImpl<PortfolioData>(this as PortfolioData, _$identity);

  /// Serializes this PortfolioData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioData&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other.statistics, statistics)&&const DeepCollectionEquality().equals(other.skills, skills)&&const DeepCollectionEquality().equals(other.tools, tools)&&const DeepCollectionEquality().equals(other.projects, projects)&&const DeepCollectionEquality().equals(other.experience, experience)&&const DeepCollectionEquality().equals(other.socialLinks, socialLinks)&&(identical(other.contact, contact) || other.contact == contact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,profile,about,const DeepCollectionEquality().hash(statistics),const DeepCollectionEquality().hash(skills),const DeepCollectionEquality().hash(tools),const DeepCollectionEquality().hash(projects),const DeepCollectionEquality().hash(experience),const DeepCollectionEquality().hash(socialLinks),contact);

@override
String toString() {
  return 'PortfolioData(schemaVersion: $schemaVersion, profile: $profile, about: $about, statistics: $statistics, skills: $skills, tools: $tools, projects: $projects, experience: $experience, socialLinks: $socialLinks, contact: $contact)';
}


}

/// @nodoc
abstract mixin class $PortfolioDataCopyWith<$Res>  {
  factory $PortfolioDataCopyWith(PortfolioData value, $Res Function(PortfolioData) _then) = _$PortfolioDataCopyWithImpl;
@useResult
$Res call({
 int schemaVersion, Profile profile, About about, List<PortfolioStatistic> statistics, List<Skill> skills, List<PortfolioTool> tools, List<Project> projects, List<Experience> experience, List<SocialLink> socialLinks, Contact contact
});


$ProfileCopyWith<$Res> get profile;$AboutCopyWith<$Res> get about;$ContactCopyWith<$Res> get contact;

}
/// @nodoc
class _$PortfolioDataCopyWithImpl<$Res>
    implements $PortfolioDataCopyWith<$Res> {
  _$PortfolioDataCopyWithImpl(this._self, this._then);

  final PortfolioData _self;
  final $Res Function(PortfolioData) _then;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemaVersion = null,Object? profile = null,Object? about = null,Object? statistics = null,Object? skills = null,Object? tools = null,Object? projects = null,Object? experience = null,Object? socialLinks = null,Object? contact = null,}) {
  return _then(_self.copyWith(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as About,statistics: null == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as List<PortfolioStatistic>,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<Skill>,tools: null == tools ? _self.tools : tools // ignore: cast_nullable_to_non_nullable
as List<PortfolioTool>,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as List<Experience>,socialLinks: null == socialLinks ? _self.socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as List<SocialLink>,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact,
  ));
}
/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res> get profile {
  
  return $ProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AboutCopyWith<$Res> get about {
  
  return $AboutCopyWith<$Res>(_self.about, (value) {
    return _then(_self.copyWith(about: value));
  });
}/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res> get contact {
  
  return $ContactCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioData].
extension PortfolioDataPatterns on PortfolioData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioData value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioData value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int schemaVersion,  Profile profile,  About about,  List<PortfolioStatistic> statistics,  List<Skill> skills,  List<PortfolioTool> tools,  List<Project> projects,  List<Experience> experience,  List<SocialLink> socialLinks,  Contact contact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that.schemaVersion,_that.profile,_that.about,_that.statistics,_that.skills,_that.tools,_that.projects,_that.experience,_that.socialLinks,_that.contact);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int schemaVersion,  Profile profile,  About about,  List<PortfolioStatistic> statistics,  List<Skill> skills,  List<PortfolioTool> tools,  List<Project> projects,  List<Experience> experience,  List<SocialLink> socialLinks,  Contact contact)  $default,) {final _that = this;
switch (_that) {
case _PortfolioData():
return $default(_that.schemaVersion,_that.profile,_that.about,_that.statistics,_that.skills,_that.tools,_that.projects,_that.experience,_that.socialLinks,_that.contact);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int schemaVersion,  Profile profile,  About about,  List<PortfolioStatistic> statistics,  List<Skill> skills,  List<PortfolioTool> tools,  List<Project> projects,  List<Experience> experience,  List<SocialLink> socialLinks,  Contact contact)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that.schemaVersion,_that.profile,_that.about,_that.statistics,_that.skills,_that.tools,_that.projects,_that.experience,_that.socialLinks,_that.contact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortfolioData implements PortfolioData {
  const _PortfolioData({required this.schemaVersion, required this.profile, required this.about, final  List<PortfolioStatistic> statistics = const <PortfolioStatistic>[], final  List<Skill> skills = const <Skill>[], required final  List<PortfolioTool> tools, final  List<Project> projects = const <Project>[], final  List<Experience> experience = const <Experience>[], final  List<SocialLink> socialLinks = const <SocialLink>[], required this.contact}): _statistics = statistics,_skills = skills,_tools = tools,_projects = projects,_experience = experience,_socialLinks = socialLinks;
  factory _PortfolioData.fromJson(Map<String, dynamic> json) => _$PortfolioDataFromJson(json);

@override final  int schemaVersion;
@override final  Profile profile;
@override final  About about;
 final  List<PortfolioStatistic> _statistics;
@override@JsonKey() List<PortfolioStatistic> get statistics {
  if (_statistics is EqualUnmodifiableListView) return _statistics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statistics);
}

 final  List<Skill> _skills;
@override@JsonKey() List<Skill> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

 final  List<PortfolioTool> _tools;
@override List<PortfolioTool> get tools {
  if (_tools is EqualUnmodifiableListView) return _tools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tools);
}

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<Experience> _experience;
@override@JsonKey() List<Experience> get experience {
  if (_experience is EqualUnmodifiableListView) return _experience;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_experience);
}

 final  List<SocialLink> _socialLinks;
@override@JsonKey() List<SocialLink> get socialLinks {
  if (_socialLinks is EqualUnmodifiableListView) return _socialLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_socialLinks);
}

@override final  Contact contact;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioDataCopyWith<_PortfolioData> get copyWith => __$PortfolioDataCopyWithImpl<_PortfolioData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioData&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other._statistics, _statistics)&&const DeepCollectionEquality().equals(other._skills, _skills)&&const DeepCollectionEquality().equals(other._tools, _tools)&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._experience, _experience)&&const DeepCollectionEquality().equals(other._socialLinks, _socialLinks)&&(identical(other.contact, contact) || other.contact == contact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,profile,about,const DeepCollectionEquality().hash(_statistics),const DeepCollectionEquality().hash(_skills),const DeepCollectionEquality().hash(_tools),const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_experience),const DeepCollectionEquality().hash(_socialLinks),contact);

@override
String toString() {
  return 'PortfolioData(schemaVersion: $schemaVersion, profile: $profile, about: $about, statistics: $statistics, skills: $skills, tools: $tools, projects: $projects, experience: $experience, socialLinks: $socialLinks, contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$PortfolioDataCopyWith<$Res> implements $PortfolioDataCopyWith<$Res> {
  factory _$PortfolioDataCopyWith(_PortfolioData value, $Res Function(_PortfolioData) _then) = __$PortfolioDataCopyWithImpl;
@override @useResult
$Res call({
 int schemaVersion, Profile profile, About about, List<PortfolioStatistic> statistics, List<Skill> skills, List<PortfolioTool> tools, List<Project> projects, List<Experience> experience, List<SocialLink> socialLinks, Contact contact
});


@override $ProfileCopyWith<$Res> get profile;@override $AboutCopyWith<$Res> get about;@override $ContactCopyWith<$Res> get contact;

}
/// @nodoc
class __$PortfolioDataCopyWithImpl<$Res>
    implements _$PortfolioDataCopyWith<$Res> {
  __$PortfolioDataCopyWithImpl(this._self, this._then);

  final _PortfolioData _self;
  final $Res Function(_PortfolioData) _then;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemaVersion = null,Object? profile = null,Object? about = null,Object? statistics = null,Object? skills = null,Object? tools = null,Object? projects = null,Object? experience = null,Object? socialLinks = null,Object? contact = null,}) {
  return _then(_PortfolioData(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as About,statistics: null == statistics ? _self._statistics : statistics // ignore: cast_nullable_to_non_nullable
as List<PortfolioStatistic>,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<Skill>,tools: null == tools ? _self._tools : tools // ignore: cast_nullable_to_non_nullable
as List<PortfolioTool>,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,experience: null == experience ? _self._experience : experience // ignore: cast_nullable_to_non_nullable
as List<Experience>,socialLinks: null == socialLinks ? _self._socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as List<SocialLink>,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact,
  ));
}

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res> get profile {
  
  return $ProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AboutCopyWith<$Res> get about {
  
  return $AboutCopyWith<$Res>(_self.about, (value) {
    return _then(_self.copyWith(about: value));
  });
}/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res> get contact {
  
  return $ContactCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// @nodoc
mixin _$LocalizedString {

 String get en; String get de;
/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<LocalizedString> get copyWith => _$LocalizedStringCopyWithImpl<LocalizedString>(this as LocalizedString, _$identity);

  /// Serializes this LocalizedString to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedString&&(identical(other.en, en) || other.en == en)&&(identical(other.de, de) || other.de == de));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,de);

@override
String toString() {
  return 'LocalizedString(en: $en, de: $de)';
}


}

/// @nodoc
abstract mixin class $LocalizedStringCopyWith<$Res>  {
  factory $LocalizedStringCopyWith(LocalizedString value, $Res Function(LocalizedString) _then) = _$LocalizedStringCopyWithImpl;
@useResult
$Res call({
 String en, String de
});




}
/// @nodoc
class _$LocalizedStringCopyWithImpl<$Res>
    implements $LocalizedStringCopyWith<$Res> {
  _$LocalizedStringCopyWithImpl(this._self, this._then);

  final LocalizedString _self;
  final $Res Function(LocalizedString) _then;

/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = null,Object? de = null,}) {
  return _then(_self.copyWith(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,de: null == de ? _self.de : de // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedString].
extension LocalizedStringPatterns on LocalizedString {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedString value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedString value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedString():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedString value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String en,  String de)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that.en,_that.de);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String en,  String de)  $default,) {final _that = this;
switch (_that) {
case _LocalizedString():
return $default(_that.en,_that.de);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String en,  String de)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that.en,_that.de);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedString implements LocalizedString {
  const _LocalizedString({required this.en, required this.de});
  factory _LocalizedString.fromJson(Map<String, dynamic> json) => _$LocalizedStringFromJson(json);

@override final  String en;
@override final  String de;

/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedStringCopyWith<_LocalizedString> get copyWith => __$LocalizedStringCopyWithImpl<_LocalizedString>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedStringToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedString&&(identical(other.en, en) || other.en == en)&&(identical(other.de, de) || other.de == de));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,de);

@override
String toString() {
  return 'LocalizedString(en: $en, de: $de)';
}


}

/// @nodoc
abstract mixin class _$LocalizedStringCopyWith<$Res> implements $LocalizedStringCopyWith<$Res> {
  factory _$LocalizedStringCopyWith(_LocalizedString value, $Res Function(_LocalizedString) _then) = __$LocalizedStringCopyWithImpl;
@override @useResult
$Res call({
 String en, String de
});




}
/// @nodoc
class __$LocalizedStringCopyWithImpl<$Res>
    implements _$LocalizedStringCopyWith<$Res> {
  __$LocalizedStringCopyWithImpl(this._self, this._then);

  final _LocalizedString _self;
  final $Res Function(_LocalizedString) _then;

/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = null,Object? de = null,}) {
  return _then(_LocalizedString(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,de: null == de ? _self.de : de // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Profile {

 String get name; String get nickname; String get location; String get portrait; LocalizedString get professionalTitle; LocalizedString get introduction; Availability get availability; LocalizedString get cv; List<String> get languages;
/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileCopyWith<Profile> get copyWith => _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Profile&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.location, location) || other.location == location)&&(identical(other.portrait, portrait) || other.portrait == portrait)&&(identical(other.professionalTitle, professionalTitle) || other.professionalTitle == professionalTitle)&&(identical(other.introduction, introduction) || other.introduction == introduction)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.cv, cv) || other.cv == cv)&&const DeepCollectionEquality().equals(other.languages, languages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nickname,location,portrait,professionalTitle,introduction,availability,cv,const DeepCollectionEquality().hash(languages));

@override
String toString() {
  return 'Profile(name: $name, nickname: $nickname, location: $location, portrait: $portrait, professionalTitle: $professionalTitle, introduction: $introduction, availability: $availability, cv: $cv, languages: $languages)';
}


}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res>  {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) = _$ProfileCopyWithImpl;
@useResult
$Res call({
 String name, String nickname, String location, String portrait, LocalizedString professionalTitle, LocalizedString introduction, Availability availability, LocalizedString cv, List<String> languages
});


$LocalizedStringCopyWith<$Res> get professionalTitle;$LocalizedStringCopyWith<$Res> get introduction;$AvailabilityCopyWith<$Res> get availability;$LocalizedStringCopyWith<$Res> get cv;

}
/// @nodoc
class _$ProfileCopyWithImpl<$Res>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? nickname = null,Object? location = null,Object? portrait = null,Object? professionalTitle = null,Object? introduction = null,Object? availability = null,Object? cv = null,Object? languages = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,portrait: null == portrait ? _self.portrait : portrait // ignore: cast_nullable_to_non_nullable
as String,professionalTitle: null == professionalTitle ? _self.professionalTitle : professionalTitle // ignore: cast_nullable_to_non_nullable
as LocalizedString,introduction: null == introduction ? _self.introduction : introduction // ignore: cast_nullable_to_non_nullable
as LocalizedString,availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as Availability,cv: null == cv ? _self.cv : cv // ignore: cast_nullable_to_non_nullable
as LocalizedString,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get professionalTitle {
  
  return $LocalizedStringCopyWith<$Res>(_self.professionalTitle, (value) {
    return _then(_self.copyWith(professionalTitle: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get introduction {
  
  return $LocalizedStringCopyWith<$Res>(_self.introduction, (value) {
    return _then(_self.copyWith(introduction: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvailabilityCopyWith<$Res> get availability {
  
  return $AvailabilityCopyWith<$Res>(_self.availability, (value) {
    return _then(_self.copyWith(availability: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get cv {
  
  return $LocalizedStringCopyWith<$Res>(_self.cv, (value) {
    return _then(_self.copyWith(cv: value));
  });
}
}


/// Adds pattern-matching-related methods to [Profile].
extension ProfilePatterns on Profile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Profile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Profile value)  $default,){
final _that = this;
switch (_that) {
case _Profile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Profile value)?  $default,){
final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String nickname,  String location,  String portrait,  LocalizedString professionalTitle,  LocalizedString introduction,  Availability availability,  LocalizedString cv,  List<String> languages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that.name,_that.nickname,_that.location,_that.portrait,_that.professionalTitle,_that.introduction,_that.availability,_that.cv,_that.languages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String nickname,  String location,  String portrait,  LocalizedString professionalTitle,  LocalizedString introduction,  Availability availability,  LocalizedString cv,  List<String> languages)  $default,) {final _that = this;
switch (_that) {
case _Profile():
return $default(_that.name,_that.nickname,_that.location,_that.portrait,_that.professionalTitle,_that.introduction,_that.availability,_that.cv,_that.languages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String nickname,  String location,  String portrait,  LocalizedString professionalTitle,  LocalizedString introduction,  Availability availability,  LocalizedString cv,  List<String> languages)?  $default,) {final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that.name,_that.nickname,_that.location,_that.portrait,_that.professionalTitle,_that.introduction,_that.availability,_that.cv,_that.languages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Profile implements Profile {
  const _Profile({required this.name, required this.nickname, required this.location, required this.portrait, required this.professionalTitle, required this.introduction, required this.availability, required this.cv, final  List<String> languages = const <String>[]}): _languages = languages;
  factory _Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

@override final  String name;
@override final  String nickname;
@override final  String location;
@override final  String portrait;
@override final  LocalizedString professionalTitle;
@override final  LocalizedString introduction;
@override final  Availability availability;
@override final  LocalizedString cv;
 final  List<String> _languages;
@override@JsonKey() List<String> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}


/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileCopyWith<_Profile> get copyWith => __$ProfileCopyWithImpl<_Profile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Profile&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.location, location) || other.location == location)&&(identical(other.portrait, portrait) || other.portrait == portrait)&&(identical(other.professionalTitle, professionalTitle) || other.professionalTitle == professionalTitle)&&(identical(other.introduction, introduction) || other.introduction == introduction)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.cv, cv) || other.cv == cv)&&const DeepCollectionEquality().equals(other._languages, _languages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nickname,location,portrait,professionalTitle,introduction,availability,cv,const DeepCollectionEquality().hash(_languages));

@override
String toString() {
  return 'Profile(name: $name, nickname: $nickname, location: $location, portrait: $portrait, professionalTitle: $professionalTitle, introduction: $introduction, availability: $availability, cv: $cv, languages: $languages)';
}


}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) = __$ProfileCopyWithImpl;
@override @useResult
$Res call({
 String name, String nickname, String location, String portrait, LocalizedString professionalTitle, LocalizedString introduction, Availability availability, LocalizedString cv, List<String> languages
});


@override $LocalizedStringCopyWith<$Res> get professionalTitle;@override $LocalizedStringCopyWith<$Res> get introduction;@override $AvailabilityCopyWith<$Res> get availability;@override $LocalizedStringCopyWith<$Res> get cv;

}
/// @nodoc
class __$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? nickname = null,Object? location = null,Object? portrait = null,Object? professionalTitle = null,Object? introduction = null,Object? availability = null,Object? cv = null,Object? languages = null,}) {
  return _then(_Profile(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,portrait: null == portrait ? _self.portrait : portrait // ignore: cast_nullable_to_non_nullable
as String,professionalTitle: null == professionalTitle ? _self.professionalTitle : professionalTitle // ignore: cast_nullable_to_non_nullable
as LocalizedString,introduction: null == introduction ? _self.introduction : introduction // ignore: cast_nullable_to_non_nullable
as LocalizedString,availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as Availability,cv: null == cv ? _self.cv : cv // ignore: cast_nullable_to_non_nullable
as LocalizedString,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get professionalTitle {
  
  return $LocalizedStringCopyWith<$Res>(_self.professionalTitle, (value) {
    return _then(_self.copyWith(professionalTitle: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get introduction {
  
  return $LocalizedStringCopyWith<$Res>(_self.introduction, (value) {
    return _then(_self.copyWith(introduction: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvailabilityCopyWith<$Res> get availability {
  
  return $AvailabilityCopyWith<$Res>(_self.availability, (value) {
    return _then(_self.copyWith(availability: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get cv {
  
  return $LocalizedStringCopyWith<$Res>(_self.cv, (value) {
    return _then(_self.copyWith(cv: value));
  });
}
}


/// @nodoc
mixin _$Availability {

 bool get isAvailable; LocalizedString get text;
/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailabilityCopyWith<Availability> get copyWith => _$AvailabilityCopyWithImpl<Availability>(this as Availability, _$identity);

  /// Serializes this Availability to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Availability&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isAvailable,text);

@override
String toString() {
  return 'Availability(isAvailable: $isAvailable, text: $text)';
}


}

/// @nodoc
abstract mixin class $AvailabilityCopyWith<$Res>  {
  factory $AvailabilityCopyWith(Availability value, $Res Function(Availability) _then) = _$AvailabilityCopyWithImpl;
@useResult
$Res call({
 bool isAvailable, LocalizedString text
});


$LocalizedStringCopyWith<$Res> get text;

}
/// @nodoc
class _$AvailabilityCopyWithImpl<$Res>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._self, this._then);

  final Availability _self;
  final $Res Function(Availability) _then;

/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAvailable = null,Object? text = null,}) {
  return _then(_self.copyWith(
isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}
/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get text {
  
  return $LocalizedStringCopyWith<$Res>(_self.text, (value) {
    return _then(_self.copyWith(text: value));
  });
}
}


/// Adds pattern-matching-related methods to [Availability].
extension AvailabilityPatterns on Availability {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Availability value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Availability() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Availability value)  $default,){
final _that = this;
switch (_that) {
case _Availability():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Availability value)?  $default,){
final _that = this;
switch (_that) {
case _Availability() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAvailable,  LocalizedString text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Availability() when $default != null:
return $default(_that.isAvailable,_that.text);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAvailable,  LocalizedString text)  $default,) {final _that = this;
switch (_that) {
case _Availability():
return $default(_that.isAvailable,_that.text);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAvailable,  LocalizedString text)?  $default,) {final _that = this;
switch (_that) {
case _Availability() when $default != null:
return $default(_that.isAvailable,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Availability implements Availability {
  const _Availability({required this.isAvailable, required this.text});
  factory _Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);

@override final  bool isAvailable;
@override final  LocalizedString text;

/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailabilityCopyWith<_Availability> get copyWith => __$AvailabilityCopyWithImpl<_Availability>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailabilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Availability&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isAvailable,text);

@override
String toString() {
  return 'Availability(isAvailable: $isAvailable, text: $text)';
}


}

/// @nodoc
abstract mixin class _$AvailabilityCopyWith<$Res> implements $AvailabilityCopyWith<$Res> {
  factory _$AvailabilityCopyWith(_Availability value, $Res Function(_Availability) _then) = __$AvailabilityCopyWithImpl;
@override @useResult
$Res call({
 bool isAvailable, LocalizedString text
});


@override $LocalizedStringCopyWith<$Res> get text;

}
/// @nodoc
class __$AvailabilityCopyWithImpl<$Res>
    implements _$AvailabilityCopyWith<$Res> {
  __$AvailabilityCopyWithImpl(this._self, this._then);

  final _Availability _self;
  final $Res Function(_Availability) _then;

/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAvailable = null,Object? text = null,}) {
  return _then(_Availability(
isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}

/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get text {
  
  return $LocalizedStringCopyWith<$Res>(_self.text, (value) {
    return _then(_self.copyWith(text: value));
  });
}
}


/// @nodoc
mixin _$About {

 LocalizedString get title; LocalizedString get headline; List<LocalizedString> get paragraphs; List<AboutHighlight> get highlights;
/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutCopyWith<About> get copyWith => _$AboutCopyWithImpl<About>(this as About, _$identity);

  /// Serializes this About to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is About&&(identical(other.title, title) || other.title == title)&&(identical(other.headline, headline) || other.headline == headline)&&const DeepCollectionEquality().equals(other.paragraphs, paragraphs)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,headline,const DeepCollectionEquality().hash(paragraphs),const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'About(title: $title, headline: $headline, paragraphs: $paragraphs, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $AboutCopyWith<$Res>  {
  factory $AboutCopyWith(About value, $Res Function(About) _then) = _$AboutCopyWithImpl;
@useResult
$Res call({
 LocalizedString title, LocalizedString headline, List<LocalizedString> paragraphs, List<AboutHighlight> highlights
});


$LocalizedStringCopyWith<$Res> get title;$LocalizedStringCopyWith<$Res> get headline;

}
/// @nodoc
class _$AboutCopyWithImpl<$Res>
    implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._self, this._then);

  final About _self;
  final $Res Function(About) _then;

/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? headline = null,Object? paragraphs = null,Object? highlights = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as LocalizedString,paragraphs: null == paragraphs ? _self.paragraphs : paragraphs // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<AboutHighlight>,
  ));
}
/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get headline {
  
  return $LocalizedStringCopyWith<$Res>(_self.headline, (value) {
    return _then(_self.copyWith(headline: value));
  });
}
}


/// Adds pattern-matching-related methods to [About].
extension AboutPatterns on About {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _About value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _About() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _About value)  $default,){
final _that = this;
switch (_that) {
case _About():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _About value)?  $default,){
final _that = this;
switch (_that) {
case _About() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocalizedString title,  LocalizedString headline,  List<LocalizedString> paragraphs,  List<AboutHighlight> highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _About() when $default != null:
return $default(_that.title,_that.headline,_that.paragraphs,_that.highlights);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocalizedString title,  LocalizedString headline,  List<LocalizedString> paragraphs,  List<AboutHighlight> highlights)  $default,) {final _that = this;
switch (_that) {
case _About():
return $default(_that.title,_that.headline,_that.paragraphs,_that.highlights);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocalizedString title,  LocalizedString headline,  List<LocalizedString> paragraphs,  List<AboutHighlight> highlights)?  $default,) {final _that = this;
switch (_that) {
case _About() when $default != null:
return $default(_that.title,_that.headline,_that.paragraphs,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _About implements About {
  const _About({required this.title, required this.headline, required final  List<LocalizedString> paragraphs, required final  List<AboutHighlight> highlights}): _paragraphs = paragraphs,_highlights = highlights;
  factory _About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);

@override final  LocalizedString title;
@override final  LocalizedString headline;
 final  List<LocalizedString> _paragraphs;
@override List<LocalizedString> get paragraphs {
  if (_paragraphs is EqualUnmodifiableListView) return _paragraphs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paragraphs);
}

 final  List<AboutHighlight> _highlights;
@override List<AboutHighlight> get highlights {
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlights);
}


/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutCopyWith<_About> get copyWith => __$AboutCopyWithImpl<_About>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AboutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _About&&(identical(other.title, title) || other.title == title)&&(identical(other.headline, headline) || other.headline == headline)&&const DeepCollectionEquality().equals(other._paragraphs, _paragraphs)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,headline,const DeepCollectionEquality().hash(_paragraphs),const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'About(title: $title, headline: $headline, paragraphs: $paragraphs, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$AboutCopyWith(_About value, $Res Function(_About) _then) = __$AboutCopyWithImpl;
@override @useResult
$Res call({
 LocalizedString title, LocalizedString headline, List<LocalizedString> paragraphs, List<AboutHighlight> highlights
});


@override $LocalizedStringCopyWith<$Res> get title;@override $LocalizedStringCopyWith<$Res> get headline;

}
/// @nodoc
class __$AboutCopyWithImpl<$Res>
    implements _$AboutCopyWith<$Res> {
  __$AboutCopyWithImpl(this._self, this._then);

  final _About _self;
  final $Res Function(_About) _then;

/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? headline = null,Object? paragraphs = null,Object? highlights = null,}) {
  return _then(_About(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as LocalizedString,paragraphs: null == paragraphs ? _self._paragraphs : paragraphs // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<AboutHighlight>,
  ));
}

/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of About
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get headline {
  
  return $LocalizedStringCopyWith<$Res>(_self.headline, (value) {
    return _then(_self.copyWith(headline: value));
  });
}
}


/// @nodoc
mixin _$AboutHighlight {

 String get icon; LocalizedString get title; LocalizedString get description;
/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutHighlightCopyWith<AboutHighlight> get copyWith => _$AboutHighlightCopyWithImpl<AboutHighlight>(this as AboutHighlight, _$identity);

  /// Serializes this AboutHighlight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutHighlight&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,title,description);

@override
String toString() {
  return 'AboutHighlight(icon: $icon, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $AboutHighlightCopyWith<$Res>  {
  factory $AboutHighlightCopyWith(AboutHighlight value, $Res Function(AboutHighlight) _then) = _$AboutHighlightCopyWithImpl;
@useResult
$Res call({
 String icon, LocalizedString title, LocalizedString description
});


$LocalizedStringCopyWith<$Res> get title;$LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class _$AboutHighlightCopyWithImpl<$Res>
    implements $AboutHighlightCopyWith<$Res> {
  _$AboutHighlightCopyWithImpl(this._self, this._then);

  final AboutHighlight _self;
  final $Res Function(AboutHighlight) _then;

/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}
/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [AboutHighlight].
extension AboutHighlightPatterns on AboutHighlight {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutHighlight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutHighlight() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutHighlight value)  $default,){
final _that = this;
switch (_that) {
case _AboutHighlight():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutHighlight value)?  $default,){
final _that = this;
switch (_that) {
case _AboutHighlight() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String icon,  LocalizedString title,  LocalizedString description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutHighlight() when $default != null:
return $default(_that.icon,_that.title,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String icon,  LocalizedString title,  LocalizedString description)  $default,) {final _that = this;
switch (_that) {
case _AboutHighlight():
return $default(_that.icon,_that.title,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String icon,  LocalizedString title,  LocalizedString description)?  $default,) {final _that = this;
switch (_that) {
case _AboutHighlight() when $default != null:
return $default(_that.icon,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AboutHighlight implements AboutHighlight {
  const _AboutHighlight({required this.icon, required this.title, required this.description});
  factory _AboutHighlight.fromJson(Map<String, dynamic> json) => _$AboutHighlightFromJson(json);

@override final  String icon;
@override final  LocalizedString title;
@override final  LocalizedString description;

/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutHighlightCopyWith<_AboutHighlight> get copyWith => __$AboutHighlightCopyWithImpl<_AboutHighlight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AboutHighlightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutHighlight&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,title,description);

@override
String toString() {
  return 'AboutHighlight(icon: $icon, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AboutHighlightCopyWith<$Res> implements $AboutHighlightCopyWith<$Res> {
  factory _$AboutHighlightCopyWith(_AboutHighlight value, $Res Function(_AboutHighlight) _then) = __$AboutHighlightCopyWithImpl;
@override @useResult
$Res call({
 String icon, LocalizedString title, LocalizedString description
});


@override $LocalizedStringCopyWith<$Res> get title;@override $LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class __$AboutHighlightCopyWithImpl<$Res>
    implements _$AboutHighlightCopyWith<$Res> {
  __$AboutHighlightCopyWithImpl(this._self, this._then);

  final _AboutHighlight _self;
  final $Res Function(_AboutHighlight) _then;

/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? title = null,Object? description = null,}) {
  return _then(_AboutHighlight(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}

/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of AboutHighlight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$PortfolioStatistic {

 String get id; String get value; LocalizedString get label; int get sortOrder; bool get isVisible;
/// Create a copy of PortfolioStatistic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioStatisticCopyWith<PortfolioStatistic> get copyWith => _$PortfolioStatisticCopyWithImpl<PortfolioStatistic>(this as PortfolioStatistic, _$identity);

  /// Serializes this PortfolioStatistic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioStatistic&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,label,sortOrder,isVisible);

@override
String toString() {
  return 'PortfolioStatistic(id: $id, value: $value, label: $label, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $PortfolioStatisticCopyWith<$Res>  {
  factory $PortfolioStatisticCopyWith(PortfolioStatistic value, $Res Function(PortfolioStatistic) _then) = _$PortfolioStatisticCopyWithImpl;
@useResult
$Res call({
 String id, String value, LocalizedString label, int sortOrder, bool isVisible
});


$LocalizedStringCopyWith<$Res> get label;

}
/// @nodoc
class _$PortfolioStatisticCopyWithImpl<$Res>
    implements $PortfolioStatisticCopyWith<$Res> {
  _$PortfolioStatisticCopyWithImpl(this._self, this._then);

  final PortfolioStatistic _self;
  final $Res Function(PortfolioStatistic) _then;

/// Create a copy of PortfolioStatistic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,Object? label = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocalizedString,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PortfolioStatistic
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get label {
  
  return $LocalizedStringCopyWith<$Res>(_self.label, (value) {
    return _then(_self.copyWith(label: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioStatistic].
extension PortfolioStatisticPatterns on PortfolioStatistic {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioStatistic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioStatistic() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioStatistic value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioStatistic():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioStatistic value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioStatistic() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String value,  LocalizedString label,  int sortOrder,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioStatistic() when $default != null:
return $default(_that.id,_that.value,_that.label,_that.sortOrder,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String value,  LocalizedString label,  int sortOrder,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _PortfolioStatistic():
return $default(_that.id,_that.value,_that.label,_that.sortOrder,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String value,  LocalizedString label,  int sortOrder,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioStatistic() when $default != null:
return $default(_that.id,_that.value,_that.label,_that.sortOrder,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortfolioStatistic implements PortfolioStatistic {
  const _PortfolioStatistic({required this.id, required this.value, required this.label, this.sortOrder = 0, this.isVisible = true});
  factory _PortfolioStatistic.fromJson(Map<String, dynamic> json) => _$PortfolioStatisticFromJson(json);

@override final  String id;
@override final  String value;
@override final  LocalizedString label;
@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  bool isVisible;

/// Create a copy of PortfolioStatistic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioStatisticCopyWith<_PortfolioStatistic> get copyWith => __$PortfolioStatisticCopyWithImpl<_PortfolioStatistic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioStatisticToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioStatistic&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,label,sortOrder,isVisible);

@override
String toString() {
  return 'PortfolioStatistic(id: $id, value: $value, label: $label, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$PortfolioStatisticCopyWith<$Res> implements $PortfolioStatisticCopyWith<$Res> {
  factory _$PortfolioStatisticCopyWith(_PortfolioStatistic value, $Res Function(_PortfolioStatistic) _then) = __$PortfolioStatisticCopyWithImpl;
@override @useResult
$Res call({
 String id, String value, LocalizedString label, int sortOrder, bool isVisible
});


@override $LocalizedStringCopyWith<$Res> get label;

}
/// @nodoc
class __$PortfolioStatisticCopyWithImpl<$Res>
    implements _$PortfolioStatisticCopyWith<$Res> {
  __$PortfolioStatisticCopyWithImpl(this._self, this._then);

  final _PortfolioStatistic _self;
  final $Res Function(_PortfolioStatistic) _then;

/// Create a copy of PortfolioStatistic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? label = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_PortfolioStatistic(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocalizedString,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PortfolioStatistic
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get label {
  
  return $LocalizedStringCopyWith<$Res>(_self.label, (value) {
    return _then(_self.copyWith(label: value));
  });
}
}


/// @nodoc
mixin _$Skill {

 String get id; LocalizedString get title; LocalizedString get description; String get icon; List<String> get items; int get sortOrder; bool get isVisible;
/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillCopyWith<Skill> get copyWith => _$SkillCopyWithImpl<Skill>(this as Skill, _$identity);

  /// Serializes this Skill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Skill&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,const DeepCollectionEquality().hash(items),sortOrder,isVisible);

@override
String toString() {
  return 'Skill(id: $id, title: $title, description: $description, icon: $icon, items: $items, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $SkillCopyWith<$Res>  {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) _then) = _$SkillCopyWithImpl;
@useResult
$Res call({
 String id, LocalizedString title, LocalizedString description, String icon, List<String> items, int sortOrder, bool isVisible
});


$LocalizedStringCopyWith<$Res> get title;$LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class _$SkillCopyWithImpl<$Res>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._self, this._then);

  final Skill _self;
  final $Res Function(Skill) _then;

/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? items = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<String>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [Skill].
extension SkillPatterns on Skill {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Skill value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Skill() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Skill value)  $default,){
final _that = this;
switch (_that) {
case _Skill():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Skill value)?  $default,){
final _that = this;
switch (_that) {
case _Skill() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  LocalizedString title,  LocalizedString description,  String icon,  List<String> items,  int sortOrder,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Skill() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.items,_that.sortOrder,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  LocalizedString title,  LocalizedString description,  String icon,  List<String> items,  int sortOrder,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _Skill():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.items,_that.sortOrder,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  LocalizedString title,  LocalizedString description,  String icon,  List<String> items,  int sortOrder,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _Skill() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.items,_that.sortOrder,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Skill implements Skill {
  const _Skill({required this.id, required this.title, required this.description, required this.icon, final  List<String> items = const <String>[], this.sortOrder = 0, this.isVisible = true}): _items = items;
  factory _Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

@override final  String id;
@override final  LocalizedString title;
@override final  LocalizedString description;
@override final  String icon;
 final  List<String> _items;
@override@JsonKey() List<String> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  bool isVisible;

/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillCopyWith<_Skill> get copyWith => __$SkillCopyWithImpl<_Skill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Skill&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,const DeepCollectionEquality().hash(_items),sortOrder,isVisible);

@override
String toString() {
  return 'Skill(id: $id, title: $title, description: $description, icon: $icon, items: $items, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$SkillCopyWith(_Skill value, $Res Function(_Skill) _then) = __$SkillCopyWithImpl;
@override @useResult
$Res call({
 String id, LocalizedString title, LocalizedString description, String icon, List<String> items, int sortOrder, bool isVisible
});


@override $LocalizedStringCopyWith<$Res> get title;@override $LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class __$SkillCopyWithImpl<$Res>
    implements _$SkillCopyWith<$Res> {
  __$SkillCopyWithImpl(this._self, this._then);

  final _Skill _self;
  final $Res Function(_Skill) _then;

/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? items = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_Skill(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<String>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$PortfolioTool {

 String get id; String get name; String get logo; int get sortOrder; bool get isVisible;
/// Create a copy of PortfolioTool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioToolCopyWith<PortfolioTool> get copyWith => _$PortfolioToolCopyWithImpl<PortfolioTool>(this as PortfolioTool, _$identity);

  /// Serializes this PortfolioTool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioTool&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,sortOrder,isVisible);

@override
String toString() {
  return 'PortfolioTool(id: $id, name: $name, logo: $logo, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $PortfolioToolCopyWith<$Res>  {
  factory $PortfolioToolCopyWith(PortfolioTool value, $Res Function(PortfolioTool) _then) = _$PortfolioToolCopyWithImpl;
@useResult
$Res call({
 String id, String name, String logo, int sortOrder, bool isVisible
});




}
/// @nodoc
class _$PortfolioToolCopyWithImpl<$Res>
    implements $PortfolioToolCopyWith<$Res> {
  _$PortfolioToolCopyWithImpl(this._self, this._then);

  final PortfolioTool _self;
  final $Res Function(PortfolioTool) _then;

/// Create a copy of PortfolioTool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PortfolioTool].
extension PortfolioToolPatterns on PortfolioTool {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioTool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioTool() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioTool value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioTool():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioTool value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioTool() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String logo,  int sortOrder,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioTool() when $default != null:
return $default(_that.id,_that.name,_that.logo,_that.sortOrder,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String logo,  int sortOrder,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _PortfolioTool():
return $default(_that.id,_that.name,_that.logo,_that.sortOrder,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String logo,  int sortOrder,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioTool() when $default != null:
return $default(_that.id,_that.name,_that.logo,_that.sortOrder,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortfolioTool implements PortfolioTool {
  const _PortfolioTool({required this.id, required this.name, required this.logo, required this.sortOrder, required this.isVisible});
  factory _PortfolioTool.fromJson(Map<String, dynamic> json) => _$PortfolioToolFromJson(json);

@override final  String id;
@override final  String name;
@override final  String logo;
@override final  int sortOrder;
@override final  bool isVisible;

/// Create a copy of PortfolioTool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioToolCopyWith<_PortfolioTool> get copyWith => __$PortfolioToolCopyWithImpl<_PortfolioTool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioToolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioTool&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,sortOrder,isVisible);

@override
String toString() {
  return 'PortfolioTool(id: $id, name: $name, logo: $logo, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$PortfolioToolCopyWith<$Res> implements $PortfolioToolCopyWith<$Res> {
  factory _$PortfolioToolCopyWith(_PortfolioTool value, $Res Function(_PortfolioTool) _then) = __$PortfolioToolCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String logo, int sortOrder, bool isVisible
});




}
/// @nodoc
class __$PortfolioToolCopyWithImpl<$Res>
    implements _$PortfolioToolCopyWith<$Res> {
  __$PortfolioToolCopyWithImpl(this._self, this._then);

  final _PortfolioTool _self;
  final $Res Function(_PortfolioTool) _then;

/// Create a copy of PortfolioTool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_PortfolioTool(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Project {

 String get id; String get slug; bool get isSample; String get category; String get status; int get year; bool get featured; bool get isVisible; int get sortOrder; LocalizedString get title; LocalizedString get role; LocalizedString? get client; LocalizedString get shortDescription; LocalizedString get fullDescription; LocalizedString? get problem; LocalizedString? get solution; List<LocalizedString> get responsibilities; List<LocalizedString> get features; List<ProjectChallenge> get challenges; List<ProjectResult> get results; List<LocalizedString> get lessonsLearned; List<String> get technologies; List<String> get platforms; List<String> get tags; ProjectImage? get thumbnailImage; ProjectImage get coverImage; List<ProjectGalleryItem> get gallery; List<ProjectLink> get links;
/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectCopyWith<Project> get copyWith => _$ProjectCopyWithImpl<Project>(this as Project, _$identity);

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Project&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isSample, isSample) || other.isSample == isSample)&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.year, year) || other.year == year)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.title, title) || other.title == title)&&(identical(other.role, role) || other.role == role)&&(identical(other.client, client) || other.client == client)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.fullDescription, fullDescription) || other.fullDescription == fullDescription)&&(identical(other.problem, problem) || other.problem == problem)&&(identical(other.solution, solution) || other.solution == solution)&&const DeepCollectionEquality().equals(other.responsibilities, responsibilities)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.challenges, challenges)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.lessonsLearned, lessonsLearned)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&const DeepCollectionEquality().equals(other.platforms, platforms)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&const DeepCollectionEquality().equals(other.links, links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,isSample,category,status,year,featured,isVisible,sortOrder,title,role,client,shortDescription,fullDescription,problem,solution,const DeepCollectionEquality().hash(responsibilities),const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(challenges),const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(lessonsLearned),const DeepCollectionEquality().hash(technologies),const DeepCollectionEquality().hash(platforms),const DeepCollectionEquality().hash(tags),thumbnailImage,coverImage,const DeepCollectionEquality().hash(gallery),const DeepCollectionEquality().hash(links)]);

@override
String toString() {
  return 'Project(id: $id, slug: $slug, isSample: $isSample, category: $category, status: $status, year: $year, featured: $featured, isVisible: $isVisible, sortOrder: $sortOrder, title: $title, role: $role, client: $client, shortDescription: $shortDescription, fullDescription: $fullDescription, problem: $problem, solution: $solution, responsibilities: $responsibilities, features: $features, challenges: $challenges, results: $results, lessonsLearned: $lessonsLearned, technologies: $technologies, platforms: $platforms, tags: $tags, thumbnailImage: $thumbnailImage, coverImage: $coverImage, gallery: $gallery, links: $links)';
}


}

/// @nodoc
abstract mixin class $ProjectCopyWith<$Res>  {
  factory $ProjectCopyWith(Project value, $Res Function(Project) _then) = _$ProjectCopyWithImpl;
@useResult
$Res call({
 String id, String slug, bool isSample, String category, String status, int year, bool featured, bool isVisible, int sortOrder, LocalizedString title, LocalizedString role, LocalizedString? client, LocalizedString shortDescription, LocalizedString fullDescription, LocalizedString? problem, LocalizedString? solution, List<LocalizedString> responsibilities, List<LocalizedString> features, List<ProjectChallenge> challenges, List<ProjectResult> results, List<LocalizedString> lessonsLearned, List<String> technologies, List<String> platforms, List<String> tags, ProjectImage? thumbnailImage, ProjectImage coverImage, List<ProjectGalleryItem> gallery, List<ProjectLink> links
});


$LocalizedStringCopyWith<$Res> get title;$LocalizedStringCopyWith<$Res> get role;$LocalizedStringCopyWith<$Res>? get client;$LocalizedStringCopyWith<$Res> get shortDescription;$LocalizedStringCopyWith<$Res> get fullDescription;$LocalizedStringCopyWith<$Res>? get problem;$LocalizedStringCopyWith<$Res>? get solution;$ProjectImageCopyWith<$Res>? get thumbnailImage;$ProjectImageCopyWith<$Res> get coverImage;

}
/// @nodoc
class _$ProjectCopyWithImpl<$Res>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._self, this._then);

  final Project _self;
  final $Res Function(Project) _then;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? isSample = null,Object? category = null,Object? status = null,Object? year = null,Object? featured = null,Object? isVisible = null,Object? sortOrder = null,Object? title = null,Object? role = null,Object? client = freezed,Object? shortDescription = null,Object? fullDescription = null,Object? problem = freezed,Object? solution = freezed,Object? responsibilities = null,Object? features = null,Object? challenges = null,Object? results = null,Object? lessonsLearned = null,Object? technologies = null,Object? platforms = null,Object? tags = null,Object? thumbnailImage = freezed,Object? coverImage = null,Object? gallery = null,Object? links = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isSample: null == isSample ? _self.isSample : isSample // ignore: cast_nullable_to_non_nullable
as bool,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,featured: null == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as bool,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as LocalizedString,client: freezed == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as LocalizedString?,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as LocalizedString,fullDescription: null == fullDescription ? _self.fullDescription : fullDescription // ignore: cast_nullable_to_non_nullable
as LocalizedString,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as LocalizedString?,solution: freezed == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as LocalizedString?,responsibilities: null == responsibilities ? _self.responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,challenges: null == challenges ? _self.challenges : challenges // ignore: cast_nullable_to_non_nullable
as List<ProjectChallenge>,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ProjectResult>,lessonsLearned: null == lessonsLearned ? _self.lessonsLearned : lessonsLearned // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as ProjectImage?,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as ProjectImage,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<ProjectGalleryItem>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<ProjectLink>,
  ));
}
/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get role {
  
  return $LocalizedStringCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get client {
    if (_self.client == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.client!, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get shortDescription {
  
  return $LocalizedStringCopyWith<$Res>(_self.shortDescription, (value) {
    return _then(_self.copyWith(shortDescription: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get fullDescription {
  
  return $LocalizedStringCopyWith<$Res>(_self.fullDescription, (value) {
    return _then(_self.copyWith(fullDescription: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get solution {
    if (_self.solution == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.solution!, (value) {
    return _then(_self.copyWith(solution: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectImageCopyWith<$Res>? get thumbnailImage {
    if (_self.thumbnailImage == null) {
    return null;
  }

  return $ProjectImageCopyWith<$Res>(_self.thumbnailImage!, (value) {
    return _then(_self.copyWith(thumbnailImage: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectImageCopyWith<$Res> get coverImage {
  
  return $ProjectImageCopyWith<$Res>(_self.coverImage, (value) {
    return _then(_self.copyWith(coverImage: value));
  });
}
}


/// Adds pattern-matching-related methods to [Project].
extension ProjectPatterns on Project {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Project value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Project value)  $default,){
final _that = this;
switch (_that) {
case _Project():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Project value)?  $default,){
final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String slug,  bool isSample,  String category,  String status,  int year,  bool featured,  bool isVisible,  int sortOrder,  LocalizedString title,  LocalizedString role,  LocalizedString? client,  LocalizedString shortDescription,  LocalizedString fullDescription,  LocalizedString? problem,  LocalizedString? solution,  List<LocalizedString> responsibilities,  List<LocalizedString> features,  List<ProjectChallenge> challenges,  List<ProjectResult> results,  List<LocalizedString> lessonsLearned,  List<String> technologies,  List<String> platforms,  List<String> tags,  ProjectImage? thumbnailImage,  ProjectImage coverImage,  List<ProjectGalleryItem> gallery,  List<ProjectLink> links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that.id,_that.slug,_that.isSample,_that.category,_that.status,_that.year,_that.featured,_that.isVisible,_that.sortOrder,_that.title,_that.role,_that.client,_that.shortDescription,_that.fullDescription,_that.problem,_that.solution,_that.responsibilities,_that.features,_that.challenges,_that.results,_that.lessonsLearned,_that.technologies,_that.platforms,_that.tags,_that.thumbnailImage,_that.coverImage,_that.gallery,_that.links);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String slug,  bool isSample,  String category,  String status,  int year,  bool featured,  bool isVisible,  int sortOrder,  LocalizedString title,  LocalizedString role,  LocalizedString? client,  LocalizedString shortDescription,  LocalizedString fullDescription,  LocalizedString? problem,  LocalizedString? solution,  List<LocalizedString> responsibilities,  List<LocalizedString> features,  List<ProjectChallenge> challenges,  List<ProjectResult> results,  List<LocalizedString> lessonsLearned,  List<String> technologies,  List<String> platforms,  List<String> tags,  ProjectImage? thumbnailImage,  ProjectImage coverImage,  List<ProjectGalleryItem> gallery,  List<ProjectLink> links)  $default,) {final _that = this;
switch (_that) {
case _Project():
return $default(_that.id,_that.slug,_that.isSample,_that.category,_that.status,_that.year,_that.featured,_that.isVisible,_that.sortOrder,_that.title,_that.role,_that.client,_that.shortDescription,_that.fullDescription,_that.problem,_that.solution,_that.responsibilities,_that.features,_that.challenges,_that.results,_that.lessonsLearned,_that.technologies,_that.platforms,_that.tags,_that.thumbnailImage,_that.coverImage,_that.gallery,_that.links);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String slug,  bool isSample,  String category,  String status,  int year,  bool featured,  bool isVisible,  int sortOrder,  LocalizedString title,  LocalizedString role,  LocalizedString? client,  LocalizedString shortDescription,  LocalizedString fullDescription,  LocalizedString? problem,  LocalizedString? solution,  List<LocalizedString> responsibilities,  List<LocalizedString> features,  List<ProjectChallenge> challenges,  List<ProjectResult> results,  List<LocalizedString> lessonsLearned,  List<String> technologies,  List<String> platforms,  List<String> tags,  ProjectImage? thumbnailImage,  ProjectImage coverImage,  List<ProjectGalleryItem> gallery,  List<ProjectLink> links)?  $default,) {final _that = this;
switch (_that) {
case _Project() when $default != null:
return $default(_that.id,_that.slug,_that.isSample,_that.category,_that.status,_that.year,_that.featured,_that.isVisible,_that.sortOrder,_that.title,_that.role,_that.client,_that.shortDescription,_that.fullDescription,_that.problem,_that.solution,_that.responsibilities,_that.features,_that.challenges,_that.results,_that.lessonsLearned,_that.technologies,_that.platforms,_that.tags,_that.thumbnailImage,_that.coverImage,_that.gallery,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Project implements Project {
  const _Project({required this.id, required this.slug, this.isSample = false, required this.category, required this.status, required this.year, required this.featured, this.isVisible = true, this.sortOrder = 0, required this.title, required this.role, this.client, required this.shortDescription, required this.fullDescription, this.problem, this.solution, final  List<LocalizedString> responsibilities = const <LocalizedString>[], final  List<LocalizedString> features = const <LocalizedString>[], final  List<ProjectChallenge> challenges = const <ProjectChallenge>[], final  List<ProjectResult> results = const <ProjectResult>[], final  List<LocalizedString> lessonsLearned = const <LocalizedString>[], final  List<String> technologies = const <String>[], final  List<String> platforms = const <String>[], final  List<String> tags = const <String>[], this.thumbnailImage, required this.coverImage, final  List<ProjectGalleryItem> gallery = const <ProjectGalleryItem>[], final  List<ProjectLink> links = const <ProjectLink>[]}): _responsibilities = responsibilities,_features = features,_challenges = challenges,_results = results,_lessonsLearned = lessonsLearned,_technologies = technologies,_platforms = platforms,_tags = tags,_gallery = gallery,_links = links;
  factory _Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

@override final  String id;
@override final  String slug;
@override@JsonKey() final  bool isSample;
@override final  String category;
@override final  String status;
@override final  int year;
@override final  bool featured;
@override@JsonKey() final  bool isVisible;
@override@JsonKey() final  int sortOrder;
@override final  LocalizedString title;
@override final  LocalizedString role;
@override final  LocalizedString? client;
@override final  LocalizedString shortDescription;
@override final  LocalizedString fullDescription;
@override final  LocalizedString? problem;
@override final  LocalizedString? solution;
 final  List<LocalizedString> _responsibilities;
@override@JsonKey() List<LocalizedString> get responsibilities {
  if (_responsibilities is EqualUnmodifiableListView) return _responsibilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_responsibilities);
}

 final  List<LocalizedString> _features;
@override@JsonKey() List<LocalizedString> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

 final  List<ProjectChallenge> _challenges;
@override@JsonKey() List<ProjectChallenge> get challenges {
  if (_challenges is EqualUnmodifiableListView) return _challenges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_challenges);
}

 final  List<ProjectResult> _results;
@override@JsonKey() List<ProjectResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<LocalizedString> _lessonsLearned;
@override@JsonKey() List<LocalizedString> get lessonsLearned {
  if (_lessonsLearned is EqualUnmodifiableListView) return _lessonsLearned;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessonsLearned);
}

 final  List<String> _technologies;
@override@JsonKey() List<String> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}

 final  List<String> _platforms;
@override@JsonKey() List<String> get platforms {
  if (_platforms is EqualUnmodifiableListView) return _platforms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_platforms);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  ProjectImage? thumbnailImage;
@override final  ProjectImage coverImage;
 final  List<ProjectGalleryItem> _gallery;
@override@JsonKey() List<ProjectGalleryItem> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

 final  List<ProjectLink> _links;
@override@JsonKey() List<ProjectLink> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}


/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectCopyWith<_Project> get copyWith => __$ProjectCopyWithImpl<_Project>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Project&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isSample, isSample) || other.isSample == isSample)&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.year, year) || other.year == year)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.title, title) || other.title == title)&&(identical(other.role, role) || other.role == role)&&(identical(other.client, client) || other.client == client)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.fullDescription, fullDescription) || other.fullDescription == fullDescription)&&(identical(other.problem, problem) || other.problem == problem)&&(identical(other.solution, solution) || other.solution == solution)&&const DeepCollectionEquality().equals(other._responsibilities, _responsibilities)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._challenges, _challenges)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._lessonsLearned, _lessonsLearned)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&const DeepCollectionEquality().equals(other._platforms, _platforms)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&const DeepCollectionEquality().equals(other._links, _links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,isSample,category,status,year,featured,isVisible,sortOrder,title,role,client,shortDescription,fullDescription,problem,solution,const DeepCollectionEquality().hash(_responsibilities),const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_challenges),const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_lessonsLearned),const DeepCollectionEquality().hash(_technologies),const DeepCollectionEquality().hash(_platforms),const DeepCollectionEquality().hash(_tags),thumbnailImage,coverImage,const DeepCollectionEquality().hash(_gallery),const DeepCollectionEquality().hash(_links)]);

@override
String toString() {
  return 'Project(id: $id, slug: $slug, isSample: $isSample, category: $category, status: $status, year: $year, featured: $featured, isVisible: $isVisible, sortOrder: $sortOrder, title: $title, role: $role, client: $client, shortDescription: $shortDescription, fullDescription: $fullDescription, problem: $problem, solution: $solution, responsibilities: $responsibilities, features: $features, challenges: $challenges, results: $results, lessonsLearned: $lessonsLearned, technologies: $technologies, platforms: $platforms, tags: $tags, thumbnailImage: $thumbnailImage, coverImage: $coverImage, gallery: $gallery, links: $links)';
}


}

/// @nodoc
abstract mixin class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) _then) = __$ProjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String slug, bool isSample, String category, String status, int year, bool featured, bool isVisible, int sortOrder, LocalizedString title, LocalizedString role, LocalizedString? client, LocalizedString shortDescription, LocalizedString fullDescription, LocalizedString? problem, LocalizedString? solution, List<LocalizedString> responsibilities, List<LocalizedString> features, List<ProjectChallenge> challenges, List<ProjectResult> results, List<LocalizedString> lessonsLearned, List<String> technologies, List<String> platforms, List<String> tags, ProjectImage? thumbnailImage, ProjectImage coverImage, List<ProjectGalleryItem> gallery, List<ProjectLink> links
});


@override $LocalizedStringCopyWith<$Res> get title;@override $LocalizedStringCopyWith<$Res> get role;@override $LocalizedStringCopyWith<$Res>? get client;@override $LocalizedStringCopyWith<$Res> get shortDescription;@override $LocalizedStringCopyWith<$Res> get fullDescription;@override $LocalizedStringCopyWith<$Res>? get problem;@override $LocalizedStringCopyWith<$Res>? get solution;@override $ProjectImageCopyWith<$Res>? get thumbnailImage;@override $ProjectImageCopyWith<$Res> get coverImage;

}
/// @nodoc
class __$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(this._self, this._then);

  final _Project _self;
  final $Res Function(_Project) _then;

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? isSample = null,Object? category = null,Object? status = null,Object? year = null,Object? featured = null,Object? isVisible = null,Object? sortOrder = null,Object? title = null,Object? role = null,Object? client = freezed,Object? shortDescription = null,Object? fullDescription = null,Object? problem = freezed,Object? solution = freezed,Object? responsibilities = null,Object? features = null,Object? challenges = null,Object? results = null,Object? lessonsLearned = null,Object? technologies = null,Object? platforms = null,Object? tags = null,Object? thumbnailImage = freezed,Object? coverImage = null,Object? gallery = null,Object? links = null,}) {
  return _then(_Project(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isSample: null == isSample ? _self.isSample : isSample // ignore: cast_nullable_to_non_nullable
as bool,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,featured: null == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as bool,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as LocalizedString,client: freezed == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as LocalizedString?,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as LocalizedString,fullDescription: null == fullDescription ? _self.fullDescription : fullDescription // ignore: cast_nullable_to_non_nullable
as LocalizedString,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as LocalizedString?,solution: freezed == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as LocalizedString?,responsibilities: null == responsibilities ? _self._responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,challenges: null == challenges ? _self._challenges : challenges // ignore: cast_nullable_to_non_nullable
as List<ProjectChallenge>,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ProjectResult>,lessonsLearned: null == lessonsLearned ? _self._lessonsLearned : lessonsLearned // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self._platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as ProjectImage?,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as ProjectImage,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<ProjectGalleryItem>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<ProjectLink>,
  ));
}

/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get role {
  
  return $LocalizedStringCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get client {
    if (_self.client == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.client!, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get shortDescription {
  
  return $LocalizedStringCopyWith<$Res>(_self.shortDescription, (value) {
    return _then(_self.copyWith(shortDescription: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get fullDescription {
  
  return $LocalizedStringCopyWith<$Res>(_self.fullDescription, (value) {
    return _then(_self.copyWith(fullDescription: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get solution {
    if (_self.solution == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.solution!, (value) {
    return _then(_self.copyWith(solution: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectImageCopyWith<$Res>? get thumbnailImage {
    if (_self.thumbnailImage == null) {
    return null;
  }

  return $ProjectImageCopyWith<$Res>(_self.thumbnailImage!, (value) {
    return _then(_self.copyWith(thumbnailImage: value));
  });
}/// Create a copy of Project
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectImageCopyWith<$Res> get coverImage {
  
  return $ProjectImageCopyWith<$Res>(_self.coverImage, (value) {
    return _then(_self.copyWith(coverImage: value));
  });
}
}


/// @nodoc
mixin _$ProjectChallenge {

 LocalizedString get title; LocalizedString get description;
/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectChallengeCopyWith<ProjectChallenge> get copyWith => _$ProjectChallengeCopyWithImpl<ProjectChallenge>(this as ProjectChallenge, _$identity);

  /// Serializes this ProjectChallenge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectChallenge&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'ProjectChallenge(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $ProjectChallengeCopyWith<$Res>  {
  factory $ProjectChallengeCopyWith(ProjectChallenge value, $Res Function(ProjectChallenge) _then) = _$ProjectChallengeCopyWithImpl;
@useResult
$Res call({
 LocalizedString title, LocalizedString description
});


$LocalizedStringCopyWith<$Res> get title;$LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class _$ProjectChallengeCopyWithImpl<$Res>
    implements $ProjectChallengeCopyWith<$Res> {
  _$ProjectChallengeCopyWithImpl(this._self, this._then);

  final ProjectChallenge _self;
  final $Res Function(ProjectChallenge) _then;

/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}
/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProjectChallenge].
extension ProjectChallengePatterns on ProjectChallenge {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectChallenge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectChallenge() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectChallenge value)  $default,){
final _that = this;
switch (_that) {
case _ProjectChallenge():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectChallenge value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectChallenge() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocalizedString title,  LocalizedString description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectChallenge() when $default != null:
return $default(_that.title,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocalizedString title,  LocalizedString description)  $default,) {final _that = this;
switch (_that) {
case _ProjectChallenge():
return $default(_that.title,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocalizedString title,  LocalizedString description)?  $default,) {final _that = this;
switch (_that) {
case _ProjectChallenge() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectChallenge implements ProjectChallenge {
  const _ProjectChallenge({required this.title, required this.description});
  factory _ProjectChallenge.fromJson(Map<String, dynamic> json) => _$ProjectChallengeFromJson(json);

@override final  LocalizedString title;
@override final  LocalizedString description;

/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectChallengeCopyWith<_ProjectChallenge> get copyWith => __$ProjectChallengeCopyWithImpl<_ProjectChallenge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectChallengeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectChallenge&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'ProjectChallenge(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ProjectChallengeCopyWith<$Res> implements $ProjectChallengeCopyWith<$Res> {
  factory _$ProjectChallengeCopyWith(_ProjectChallenge value, $Res Function(_ProjectChallenge) _then) = __$ProjectChallengeCopyWithImpl;
@override @useResult
$Res call({
 LocalizedString title, LocalizedString description
});


@override $LocalizedStringCopyWith<$Res> get title;@override $LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class __$ProjectChallengeCopyWithImpl<$Res>
    implements _$ProjectChallengeCopyWith<$Res> {
  __$ProjectChallengeCopyWithImpl(this._self, this._then);

  final _ProjectChallenge _self;
  final $Res Function(_ProjectChallenge) _then;

/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_ProjectChallenge(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}

/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get title {
  
  return $LocalizedStringCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of ProjectChallenge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$ProjectResult {

 String get value; LocalizedString get label; LocalizedString? get description;
/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectResultCopyWith<ProjectResult> get copyWith => _$ProjectResultCopyWithImpl<ProjectResult>(this as ProjectResult, _$identity);

  /// Serializes this ProjectResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectResult&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,description);

@override
String toString() {
  return 'ProjectResult(value: $value, label: $label, description: $description)';
}


}

/// @nodoc
abstract mixin class $ProjectResultCopyWith<$Res>  {
  factory $ProjectResultCopyWith(ProjectResult value, $Res Function(ProjectResult) _then) = _$ProjectResultCopyWithImpl;
@useResult
$Res call({
 String value, LocalizedString label, LocalizedString? description
});


$LocalizedStringCopyWith<$Res> get label;$LocalizedStringCopyWith<$Res>? get description;

}
/// @nodoc
class _$ProjectResultCopyWithImpl<$Res>
    implements $ProjectResultCopyWith<$Res> {
  _$ProjectResultCopyWithImpl(this._self, this._then);

  final ProjectResult _self;
  final $Res Function(ProjectResult) _then;

/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString?,
  ));
}
/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get label {
  
  return $LocalizedStringCopyWith<$Res>(_self.label, (value) {
    return _then(_self.copyWith(label: value));
  });
}/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProjectResult].
extension ProjectResultPatterns on ProjectResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectResult value)  $default,){
final _that = this;
switch (_that) {
case _ProjectResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectResult value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  LocalizedString label,  LocalizedString? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectResult() when $default != null:
return $default(_that.value,_that.label,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  LocalizedString label,  LocalizedString? description)  $default,) {final _that = this;
switch (_that) {
case _ProjectResult():
return $default(_that.value,_that.label,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  LocalizedString label,  LocalizedString? description)?  $default,) {final _that = this;
switch (_that) {
case _ProjectResult() when $default != null:
return $default(_that.value,_that.label,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectResult implements ProjectResult {
  const _ProjectResult({required this.value, required this.label, this.description});
  factory _ProjectResult.fromJson(Map<String, dynamic> json) => _$ProjectResultFromJson(json);

@override final  String value;
@override final  LocalizedString label;
@override final  LocalizedString? description;

/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectResultCopyWith<_ProjectResult> get copyWith => __$ProjectResultCopyWithImpl<_ProjectResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectResult&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,description);

@override
String toString() {
  return 'ProjectResult(value: $value, label: $label, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ProjectResultCopyWith<$Res> implements $ProjectResultCopyWith<$Res> {
  factory _$ProjectResultCopyWith(_ProjectResult value, $Res Function(_ProjectResult) _then) = __$ProjectResultCopyWithImpl;
@override @useResult
$Res call({
 String value, LocalizedString label, LocalizedString? description
});


@override $LocalizedStringCopyWith<$Res> get label;@override $LocalizedStringCopyWith<$Res>? get description;

}
/// @nodoc
class __$ProjectResultCopyWithImpl<$Res>
    implements _$ProjectResultCopyWith<$Res> {
  __$ProjectResultCopyWithImpl(this._self, this._then);

  final _ProjectResult _self;
  final $Res Function(_ProjectResult) _then;

/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,Object? description = freezed,}) {
  return _then(_ProjectResult(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocalizedString,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString?,
  ));
}

/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get label {
  
  return $LocalizedStringCopyWith<$Res>(_self.label, (value) {
    return _then(_self.copyWith(label: value));
  });
}/// Create a copy of ProjectResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$ProjectImage {

 String get path; LocalizedString get alt;
/// Create a copy of ProjectImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectImageCopyWith<ProjectImage> get copyWith => _$ProjectImageCopyWithImpl<ProjectImage>(this as ProjectImage, _$identity);

  /// Serializes this ProjectImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectImage&&(identical(other.path, path) || other.path == path)&&(identical(other.alt, alt) || other.alt == alt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,alt);

@override
String toString() {
  return 'ProjectImage(path: $path, alt: $alt)';
}


}

/// @nodoc
abstract mixin class $ProjectImageCopyWith<$Res>  {
  factory $ProjectImageCopyWith(ProjectImage value, $Res Function(ProjectImage) _then) = _$ProjectImageCopyWithImpl;
@useResult
$Res call({
 String path, LocalizedString alt
});


$LocalizedStringCopyWith<$Res> get alt;

}
/// @nodoc
class _$ProjectImageCopyWithImpl<$Res>
    implements $ProjectImageCopyWith<$Res> {
  _$ProjectImageCopyWithImpl(this._self, this._then);

  final ProjectImage _self;
  final $Res Function(ProjectImage) _then;

/// Create a copy of ProjectImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? alt = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,alt: null == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}
/// Create a copy of ProjectImage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get alt {
  
  return $LocalizedStringCopyWith<$Res>(_self.alt, (value) {
    return _then(_self.copyWith(alt: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProjectImage].
extension ProjectImagePatterns on ProjectImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectImage value)  $default,){
final _that = this;
switch (_that) {
case _ProjectImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectImage value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  LocalizedString alt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectImage() when $default != null:
return $default(_that.path,_that.alt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  LocalizedString alt)  $default,) {final _that = this;
switch (_that) {
case _ProjectImage():
return $default(_that.path,_that.alt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  LocalizedString alt)?  $default,) {final _that = this;
switch (_that) {
case _ProjectImage() when $default != null:
return $default(_that.path,_that.alt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectImage implements ProjectImage {
  const _ProjectImage({required this.path, required this.alt});
  factory _ProjectImage.fromJson(Map<String, dynamic> json) => _$ProjectImageFromJson(json);

@override final  String path;
@override final  LocalizedString alt;

/// Create a copy of ProjectImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectImageCopyWith<_ProjectImage> get copyWith => __$ProjectImageCopyWithImpl<_ProjectImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectImage&&(identical(other.path, path) || other.path == path)&&(identical(other.alt, alt) || other.alt == alt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,alt);

@override
String toString() {
  return 'ProjectImage(path: $path, alt: $alt)';
}


}

/// @nodoc
abstract mixin class _$ProjectImageCopyWith<$Res> implements $ProjectImageCopyWith<$Res> {
  factory _$ProjectImageCopyWith(_ProjectImage value, $Res Function(_ProjectImage) _then) = __$ProjectImageCopyWithImpl;
@override @useResult
$Res call({
 String path, LocalizedString alt
});


@override $LocalizedStringCopyWith<$Res> get alt;

}
/// @nodoc
class __$ProjectImageCopyWithImpl<$Res>
    implements _$ProjectImageCopyWith<$Res> {
  __$ProjectImageCopyWithImpl(this._self, this._then);

  final _ProjectImage _self;
  final $Res Function(_ProjectImage) _then;

/// Create a copy of ProjectImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? alt = null,}) {
  return _then(_ProjectImage(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,alt: null == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as LocalizedString,
  ));
}

/// Create a copy of ProjectImage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get alt {
  
  return $LocalizedStringCopyWith<$Res>(_self.alt, (value) {
    return _then(_self.copyWith(alt: value));
  });
}
}


/// @nodoc
mixin _$ProjectGalleryItem {

 String get type; String get path; LocalizedString get alt; LocalizedString? get caption; int get sortOrder;
/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectGalleryItemCopyWith<ProjectGalleryItem> get copyWith => _$ProjectGalleryItemCopyWithImpl<ProjectGalleryItem>(this as ProjectGalleryItem, _$identity);

  /// Serializes this ProjectGalleryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectGalleryItem&&(identical(other.type, type) || other.type == type)&&(identical(other.path, path) || other.path == path)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,path,alt,caption,sortOrder);

@override
String toString() {
  return 'ProjectGalleryItem(type: $type, path: $path, alt: $alt, caption: $caption, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ProjectGalleryItemCopyWith<$Res>  {
  factory $ProjectGalleryItemCopyWith(ProjectGalleryItem value, $Res Function(ProjectGalleryItem) _then) = _$ProjectGalleryItemCopyWithImpl;
@useResult
$Res call({
 String type, String path, LocalizedString alt, LocalizedString? caption, int sortOrder
});


$LocalizedStringCopyWith<$Res> get alt;$LocalizedStringCopyWith<$Res>? get caption;

}
/// @nodoc
class _$ProjectGalleryItemCopyWithImpl<$Res>
    implements $ProjectGalleryItemCopyWith<$Res> {
  _$ProjectGalleryItemCopyWithImpl(this._self, this._then);

  final ProjectGalleryItem _self;
  final $Res Function(ProjectGalleryItem) _then;

/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? path = null,Object? alt = null,Object? caption = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,alt: null == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as LocalizedString,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as LocalizedString?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get alt {
  
  return $LocalizedStringCopyWith<$Res>(_self.alt, (value) {
    return _then(_self.copyWith(alt: value));
  });
}/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get caption {
    if (_self.caption == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.caption!, (value) {
    return _then(_self.copyWith(caption: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProjectGalleryItem].
extension ProjectGalleryItemPatterns on ProjectGalleryItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectGalleryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectGalleryItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectGalleryItem value)  $default,){
final _that = this;
switch (_that) {
case _ProjectGalleryItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectGalleryItem value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectGalleryItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String path,  LocalizedString alt,  LocalizedString? caption,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectGalleryItem() when $default != null:
return $default(_that.type,_that.path,_that.alt,_that.caption,_that.sortOrder);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String path,  LocalizedString alt,  LocalizedString? caption,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ProjectGalleryItem():
return $default(_that.type,_that.path,_that.alt,_that.caption,_that.sortOrder);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String path,  LocalizedString alt,  LocalizedString? caption,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ProjectGalleryItem() when $default != null:
return $default(_that.type,_that.path,_that.alt,_that.caption,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectGalleryItem implements ProjectGalleryItem {
  const _ProjectGalleryItem({required this.type, required this.path, required this.alt, this.caption, this.sortOrder = 0});
  factory _ProjectGalleryItem.fromJson(Map<String, dynamic> json) => _$ProjectGalleryItemFromJson(json);

@override final  String type;
@override final  String path;
@override final  LocalizedString alt;
@override final  LocalizedString? caption;
@override@JsonKey() final  int sortOrder;

/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectGalleryItemCopyWith<_ProjectGalleryItem> get copyWith => __$ProjectGalleryItemCopyWithImpl<_ProjectGalleryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectGalleryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectGalleryItem&&(identical(other.type, type) || other.type == type)&&(identical(other.path, path) || other.path == path)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,path,alt,caption,sortOrder);

@override
String toString() {
  return 'ProjectGalleryItem(type: $type, path: $path, alt: $alt, caption: $caption, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ProjectGalleryItemCopyWith<$Res> implements $ProjectGalleryItemCopyWith<$Res> {
  factory _$ProjectGalleryItemCopyWith(_ProjectGalleryItem value, $Res Function(_ProjectGalleryItem) _then) = __$ProjectGalleryItemCopyWithImpl;
@override @useResult
$Res call({
 String type, String path, LocalizedString alt, LocalizedString? caption, int sortOrder
});


@override $LocalizedStringCopyWith<$Res> get alt;@override $LocalizedStringCopyWith<$Res>? get caption;

}
/// @nodoc
class __$ProjectGalleryItemCopyWithImpl<$Res>
    implements _$ProjectGalleryItemCopyWith<$Res> {
  __$ProjectGalleryItemCopyWithImpl(this._self, this._then);

  final _ProjectGalleryItem _self;
  final $Res Function(_ProjectGalleryItem) _then;

/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? path = null,Object? alt = null,Object? caption = freezed,Object? sortOrder = null,}) {
  return _then(_ProjectGalleryItem(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,alt: null == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as LocalizedString,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as LocalizedString?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get alt {
  
  return $LocalizedStringCopyWith<$Res>(_self.alt, (value) {
    return _then(_self.copyWith(alt: value));
  });
}/// Create a copy of ProjectGalleryItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get caption {
    if (_self.caption == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.caption!, (value) {
    return _then(_self.copyWith(caption: value));
  });
}
}


/// @nodoc
mixin _$ProjectLink {

 String get type; String get url; bool get isVisible;
/// Create a copy of ProjectLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectLinkCopyWith<ProjectLink> get copyWith => _$ProjectLinkCopyWithImpl<ProjectLink>(this as ProjectLink, _$identity);

  /// Serializes this ProjectLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectLink&&(identical(other.type, type) || other.type == type)&&(identical(other.url, url) || other.url == url)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,url,isVisible);

@override
String toString() {
  return 'ProjectLink(type: $type, url: $url, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $ProjectLinkCopyWith<$Res>  {
  factory $ProjectLinkCopyWith(ProjectLink value, $Res Function(ProjectLink) _then) = _$ProjectLinkCopyWithImpl;
@useResult
$Res call({
 String type, String url, bool isVisible
});




}
/// @nodoc
class _$ProjectLinkCopyWithImpl<$Res>
    implements $ProjectLinkCopyWith<$Res> {
  _$ProjectLinkCopyWithImpl(this._self, this._then);

  final ProjectLink _self;
  final $Res Function(ProjectLink) _then;

/// Create a copy of ProjectLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? url = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProjectLink].
extension ProjectLinkPatterns on ProjectLink {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectLink() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectLink value)  $default,){
final _that = this;
switch (_that) {
case _ProjectLink():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectLink value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectLink() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String url,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectLink() when $default != null:
return $default(_that.type,_that.url,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String url,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _ProjectLink():
return $default(_that.type,_that.url,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String url,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _ProjectLink() when $default != null:
return $default(_that.type,_that.url,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectLink implements ProjectLink {
  const _ProjectLink({required this.type, required this.url, this.isVisible = true});
  factory _ProjectLink.fromJson(Map<String, dynamic> json) => _$ProjectLinkFromJson(json);

@override final  String type;
@override final  String url;
@override@JsonKey() final  bool isVisible;

/// Create a copy of ProjectLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectLinkCopyWith<_ProjectLink> get copyWith => __$ProjectLinkCopyWithImpl<_ProjectLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectLink&&(identical(other.type, type) || other.type == type)&&(identical(other.url, url) || other.url == url)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,url,isVisible);

@override
String toString() {
  return 'ProjectLink(type: $type, url: $url, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$ProjectLinkCopyWith<$Res> implements $ProjectLinkCopyWith<$Res> {
  factory _$ProjectLinkCopyWith(_ProjectLink value, $Res Function(_ProjectLink) _then) = __$ProjectLinkCopyWithImpl;
@override @useResult
$Res call({
 String type, String url, bool isVisible
});




}
/// @nodoc
class __$ProjectLinkCopyWithImpl<$Res>
    implements _$ProjectLinkCopyWith<$Res> {
  __$ProjectLinkCopyWithImpl(this._self, this._then);

  final _ProjectLink _self;
  final $Res Function(_ProjectLink) _then;

/// Create a copy of ProjectLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? url = null,Object? isVisible = null,}) {
  return _then(_ProjectLink(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Experience {

 String get id; String get organization; LocalizedString get role; String? get location; String get startDate; String? get endDate; bool get isCurrent; LocalizedString get description; List<LocalizedString> get responsibilities; List<String> get technologies; String? get logo; String? get website; int get sortOrder; bool get isVisible;
/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceCopyWith<Experience> get copyWith => _$ExperienceCopyWithImpl<Experience>(this as Experience, _$identity);

  /// Serializes this Experience to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Experience&&(identical(other.id, id) || other.id == id)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.role, role) || other.role == role)&&(identical(other.location, location) || other.location == location)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.responsibilities, responsibilities)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.website, website) || other.website == website)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organization,role,location,startDate,endDate,isCurrent,description,const DeepCollectionEquality().hash(responsibilities),const DeepCollectionEquality().hash(technologies),logo,website,sortOrder,isVisible);

@override
String toString() {
  return 'Experience(id: $id, organization: $organization, role: $role, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, responsibilities: $responsibilities, technologies: $technologies, logo: $logo, website: $website, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $ExperienceCopyWith<$Res>  {
  factory $ExperienceCopyWith(Experience value, $Res Function(Experience) _then) = _$ExperienceCopyWithImpl;
@useResult
$Res call({
 String id, String organization, LocalizedString role, String? location, String startDate, String? endDate, bool isCurrent, LocalizedString description, List<LocalizedString> responsibilities, List<String> technologies, String? logo, String? website, int sortOrder, bool isVisible
});


$LocalizedStringCopyWith<$Res> get role;$LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class _$ExperienceCopyWithImpl<$Res>
    implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._self, this._then);

  final Experience _self;
  final $Res Function(Experience) _then;

/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organization = null,Object? role = null,Object? location = freezed,Object? startDate = null,Object? endDate = freezed,Object? isCurrent = null,Object? description = null,Object? responsibilities = null,Object? technologies = null,Object? logo = freezed,Object? website = freezed,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organization: null == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as LocalizedString,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,responsibilities: null == responsibilities ? _self.responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get role {
  
  return $LocalizedStringCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [Experience].
extension ExperiencePatterns on Experience {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Experience value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Experience() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Experience value)  $default,){
final _that = this;
switch (_that) {
case _Experience():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Experience value)?  $default,){
final _that = this;
switch (_that) {
case _Experience() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String organization,  LocalizedString role,  String? location,  String startDate,  String? endDate,  bool isCurrent,  LocalizedString description,  List<LocalizedString> responsibilities,  List<String> technologies,  String? logo,  String? website,  int sortOrder,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Experience() when $default != null:
return $default(_that.id,_that.organization,_that.role,_that.location,_that.startDate,_that.endDate,_that.isCurrent,_that.description,_that.responsibilities,_that.technologies,_that.logo,_that.website,_that.sortOrder,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String organization,  LocalizedString role,  String? location,  String startDate,  String? endDate,  bool isCurrent,  LocalizedString description,  List<LocalizedString> responsibilities,  List<String> technologies,  String? logo,  String? website,  int sortOrder,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _Experience():
return $default(_that.id,_that.organization,_that.role,_that.location,_that.startDate,_that.endDate,_that.isCurrent,_that.description,_that.responsibilities,_that.technologies,_that.logo,_that.website,_that.sortOrder,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String organization,  LocalizedString role,  String? location,  String startDate,  String? endDate,  bool isCurrent,  LocalizedString description,  List<LocalizedString> responsibilities,  List<String> technologies,  String? logo,  String? website,  int sortOrder,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _Experience() when $default != null:
return $default(_that.id,_that.organization,_that.role,_that.location,_that.startDate,_that.endDate,_that.isCurrent,_that.description,_that.responsibilities,_that.technologies,_that.logo,_that.website,_that.sortOrder,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Experience implements Experience {
  const _Experience({required this.id, required this.organization, required this.role, this.location, required this.startDate, this.endDate, this.isCurrent = false, required this.description, final  List<LocalizedString> responsibilities = const <LocalizedString>[], final  List<String> technologies = const <String>[], this.logo, this.website, this.sortOrder = 0, this.isVisible = true}): _responsibilities = responsibilities,_technologies = technologies;
  factory _Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);

@override final  String id;
@override final  String organization;
@override final  LocalizedString role;
@override final  String? location;
@override final  String startDate;
@override final  String? endDate;
@override@JsonKey() final  bool isCurrent;
@override final  LocalizedString description;
 final  List<LocalizedString> _responsibilities;
@override@JsonKey() List<LocalizedString> get responsibilities {
  if (_responsibilities is EqualUnmodifiableListView) return _responsibilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_responsibilities);
}

 final  List<String> _technologies;
@override@JsonKey() List<String> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}

@override final  String? logo;
@override final  String? website;
@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  bool isVisible;

/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceCopyWith<_Experience> get copyWith => __$ExperienceCopyWithImpl<_Experience>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Experience&&(identical(other.id, id) || other.id == id)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.role, role) || other.role == role)&&(identical(other.location, location) || other.location == location)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._responsibilities, _responsibilities)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.website, website) || other.website == website)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organization,role,location,startDate,endDate,isCurrent,description,const DeepCollectionEquality().hash(_responsibilities),const DeepCollectionEquality().hash(_technologies),logo,website,sortOrder,isVisible);

@override
String toString() {
  return 'Experience(id: $id, organization: $organization, role: $role, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, responsibilities: $responsibilities, technologies: $technologies, logo: $logo, website: $website, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$ExperienceCopyWith(_Experience value, $Res Function(_Experience) _then) = __$ExperienceCopyWithImpl;
@override @useResult
$Res call({
 String id, String organization, LocalizedString role, String? location, String startDate, String? endDate, bool isCurrent, LocalizedString description, List<LocalizedString> responsibilities, List<String> technologies, String? logo, String? website, int sortOrder, bool isVisible
});


@override $LocalizedStringCopyWith<$Res> get role;@override $LocalizedStringCopyWith<$Res> get description;

}
/// @nodoc
class __$ExperienceCopyWithImpl<$Res>
    implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(this._self, this._then);

  final _Experience _self;
  final $Res Function(_Experience) _then;

/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organization = null,Object? role = null,Object? location = freezed,Object? startDate = null,Object? endDate = freezed,Object? isCurrent = null,Object? description = null,Object? responsibilities = null,Object? technologies = null,Object? logo = freezed,Object? website = freezed,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_Experience(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organization: null == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as LocalizedString,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,responsibilities: null == responsibilities ? _self._responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get role {
  
  return $LocalizedStringCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of Experience
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res> get description {
  
  return $LocalizedStringCopyWith<$Res>(_self.description, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$SocialLink {

 String get id; String get platform; String get url; String get icon; int get sortOrder; bool get isVisible;
/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLinkCopyWith<SocialLink> get copyWith => _$SocialLinkCopyWithImpl<SocialLink>(this as SocialLink, _$identity);

  /// Serializes this SocialLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLink&&(identical(other.id, id) || other.id == id)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.url, url) || other.url == url)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,platform,url,icon,sortOrder,isVisible);

@override
String toString() {
  return 'SocialLink(id: $id, platform: $platform, url: $url, icon: $icon, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $SocialLinkCopyWith<$Res>  {
  factory $SocialLinkCopyWith(SocialLink value, $Res Function(SocialLink) _then) = _$SocialLinkCopyWithImpl;
@useResult
$Res call({
 String id, String platform, String url, String icon, int sortOrder, bool isVisible
});




}
/// @nodoc
class _$SocialLinkCopyWithImpl<$Res>
    implements $SocialLinkCopyWith<$Res> {
  _$SocialLinkCopyWithImpl(this._self, this._then);

  final SocialLink _self;
  final $Res Function(SocialLink) _then;

/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? platform = null,Object? url = null,Object? icon = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialLink].
extension SocialLinkPatterns on SocialLink {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialLink value)  $default,){
final _that = this;
switch (_that) {
case _SocialLink():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialLink value)?  $default,){
final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String platform,  String url,  String icon,  int sortOrder,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
return $default(_that.id,_that.platform,_that.url,_that.icon,_that.sortOrder,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String platform,  String url,  String icon,  int sortOrder,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _SocialLink():
return $default(_that.id,_that.platform,_that.url,_that.icon,_that.sortOrder,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String platform,  String url,  String icon,  int sortOrder,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
return $default(_that.id,_that.platform,_that.url,_that.icon,_that.sortOrder,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialLink implements SocialLink {
  const _SocialLink({required this.id, required this.platform, required this.url, required this.icon, this.sortOrder = 0, this.isVisible = true});
  factory _SocialLink.fromJson(Map<String, dynamic> json) => _$SocialLinkFromJson(json);

@override final  String id;
@override final  String platform;
@override final  String url;
@override final  String icon;
@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  bool isVisible;

/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLinkCopyWith<_SocialLink> get copyWith => __$SocialLinkCopyWithImpl<_SocialLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLink&&(identical(other.id, id) || other.id == id)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.url, url) || other.url == url)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,platform,url,icon,sortOrder,isVisible);

@override
String toString() {
  return 'SocialLink(id: $id, platform: $platform, url: $url, icon: $icon, sortOrder: $sortOrder, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$SocialLinkCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory _$SocialLinkCopyWith(_SocialLink value, $Res Function(_SocialLink) _then) = __$SocialLinkCopyWithImpl;
@override @useResult
$Res call({
 String id, String platform, String url, String icon, int sortOrder, bool isVisible
});




}
/// @nodoc
class __$SocialLinkCopyWithImpl<$Res>
    implements _$SocialLinkCopyWith<$Res> {
  __$SocialLinkCopyWithImpl(this._self, this._then);

  final _SocialLink _self;
  final $Res Function(_SocialLink) _then;

/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? platform = null,Object? url = null,Object? icon = null,Object? sortOrder = null,Object? isVisible = null,}) {
  return _then(_SocialLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Contact {

 String? get email; String get location; bool get contactFormEnabled;
/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactCopyWith<Contact> get copyWith => _$ContactCopyWithImpl<Contact>(this as Contact, _$identity);

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contact&&(identical(other.email, email) || other.email == email)&&(identical(other.location, location) || other.location == location)&&(identical(other.contactFormEnabled, contactFormEnabled) || other.contactFormEnabled == contactFormEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,location,contactFormEnabled);

@override
String toString() {
  return 'Contact(email: $email, location: $location, contactFormEnabled: $contactFormEnabled)';
}


}

/// @nodoc
abstract mixin class $ContactCopyWith<$Res>  {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) _then) = _$ContactCopyWithImpl;
@useResult
$Res call({
 String? email, String location, bool contactFormEnabled
});




}
/// @nodoc
class _$ContactCopyWithImpl<$Res>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._self, this._then);

  final Contact _self;
  final $Res Function(Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? location = null,Object? contactFormEnabled = null,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,contactFormEnabled: null == contactFormEnabled ? _self.contactFormEnabled : contactFormEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Contact].
extension ContactPatterns on Contact {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contact value)  $default,){
final _that = this;
switch (_that) {
case _Contact():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contact value)?  $default,){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String location,  bool contactFormEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.email,_that.location,_that.contactFormEnabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String location,  bool contactFormEnabled)  $default,) {final _that = this;
switch (_that) {
case _Contact():
return $default(_that.email,_that.location,_that.contactFormEnabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String location,  bool contactFormEnabled)?  $default,) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.email,_that.location,_that.contactFormEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Contact implements Contact {
  const _Contact({this.email, required this.location, this.contactFormEnabled = false});
  factory _Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

@override final  String? email;
@override final  String location;
@override@JsonKey() final  bool contactFormEnabled;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactCopyWith<_Contact> get copyWith => __$ContactCopyWithImpl<_Contact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contact&&(identical(other.email, email) || other.email == email)&&(identical(other.location, location) || other.location == location)&&(identical(other.contactFormEnabled, contactFormEnabled) || other.contactFormEnabled == contactFormEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,location,contactFormEnabled);

@override
String toString() {
  return 'Contact(email: $email, location: $location, contactFormEnabled: $contactFormEnabled)';
}


}

/// @nodoc
abstract mixin class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) _then) = __$ContactCopyWithImpl;
@override @useResult
$Res call({
 String? email, String location, bool contactFormEnabled
});




}
/// @nodoc
class __$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(this._self, this._then);

  final _Contact _self;
  final $Res Function(_Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? location = null,Object? contactFormEnabled = null,}) {
  return _then(_Contact(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,contactFormEnabled: null == contactFormEnabled ? _self.contactFormEnabled : contactFormEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
