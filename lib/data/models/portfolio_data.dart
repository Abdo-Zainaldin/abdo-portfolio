import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_data.freezed.dart';
part 'portfolio_data.g.dart';

@freezed
abstract class PortfolioData with _$PortfolioData {
  const factory PortfolioData({
    required int schemaVersion,
    required Profile profile,
    required About about,
    @Default(<PortfolioStatistic>[]) List<PortfolioStatistic> statistics,
    @Default(<Skill>[]) List<Skill> skills,
    required List<PortfolioTool> tools,
    @Default(<Project>[]) List<Project> projects,
    @Default(<Experience>[]) List<Experience> experience,
    @Default(<SocialLink>[]) List<SocialLink> socialLinks,
    required Contact contact,
  }) = _PortfolioData;

  factory PortfolioData.fromJson(Map<String, dynamic> json) =>
      _$PortfolioDataFromJson(json);
}

@freezed
abstract class LocalizedString with _$LocalizedString {
  const factory LocalizedString({required String en, required String de}) =
      _LocalizedString;

  factory LocalizedString.fromJson(Map<String, dynamic> json) =>
      _$LocalizedStringFromJson(json);
}

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    required String name,
    required String nickname,
    required String location,
    required String portrait,
    required LocalizedString professionalTitle,
    required LocalizedString introduction,
    required Availability availability,
    required LocalizedString cv,
    @Default(<String>[]) List<String> languages,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
abstract class Availability with _$Availability {
  const factory Availability({
    required bool isAvailable,
    required LocalizedString text,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}

@freezed
abstract class About with _$About {
  const factory About({
    required LocalizedString title,
    required LocalizedString headline,
    required List<LocalizedString> paragraphs,
    required List<AboutHighlight> highlights,
  }) = _About;

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
}

@freezed
abstract class AboutHighlight with _$AboutHighlight {
  const factory AboutHighlight({
    required String icon,
    required LocalizedString title,
    required LocalizedString description,
  }) = _AboutHighlight;

  factory AboutHighlight.fromJson(Map<String, dynamic> json) =>
      _$AboutHighlightFromJson(json);
}

@freezed
abstract class PortfolioStatistic with _$PortfolioStatistic {
  const factory PortfolioStatistic({
    required String id,
    required String value,
    required LocalizedString label,
    @Default(0) int sortOrder,
    @Default(true) bool isVisible,
  }) = _PortfolioStatistic;

  factory PortfolioStatistic.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStatisticFromJson(json);
}

@freezed
abstract class Skill with _$Skill {
  const factory Skill({
    required String id,
    required LocalizedString title,
    required LocalizedString description,
    required String icon,
    @Default(<String>[]) List<String> items,
    @Default(0) int sortOrder,
    @Default(true) bool isVisible,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
abstract class PortfolioTool with _$PortfolioTool {
  const factory PortfolioTool({
    required String id,
    required String name,
    required String logo,
    required int sortOrder,
    required bool isVisible,
  }) = _PortfolioTool;

  factory PortfolioTool.fromJson(Map<String, dynamic> json) =>
      _$PortfolioToolFromJson(json);
}

@freezed
abstract class Project with _$Project {
  const factory Project({
    required String id,
    required String slug,
    @Default(false) bool isSample,
    required String category,
    required String status,
    required int year,
    required bool featured,
    @Default(true) bool isVisible,
    @Default(0) int sortOrder,
    required LocalizedString title,
    required LocalizedString role,
    LocalizedString? client,
    required LocalizedString shortDescription,
    required LocalizedString fullDescription,
    LocalizedString? problem,
    LocalizedString? solution,
    @Default(<LocalizedString>[]) List<LocalizedString> responsibilities,
    @Default(<LocalizedString>[]) List<LocalizedString> features,
    @Default(<ProjectChallenge>[]) List<ProjectChallenge> challenges,
    @Default(<ProjectResult>[]) List<ProjectResult> results,
    @Default(<LocalizedString>[]) List<LocalizedString> lessonsLearned,
    @Default(<String>[]) List<String> technologies,
    @Default(<String>[]) List<String> platforms,
    @Default(<String>[]) List<String> tags,
    ProjectImage? thumbnailImage,
    required ProjectImage coverImage,
    @Default(<ProjectGalleryItem>[]) List<ProjectGalleryItem> gallery,
    @Default(<ProjectLink>[]) List<ProjectLink> links,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
abstract class ProjectChallenge with _$ProjectChallenge {
  const factory ProjectChallenge({
    required LocalizedString title,
    required LocalizedString description,
  }) = _ProjectChallenge;

  factory ProjectChallenge.fromJson(Map<String, dynamic> json) =>
      _$ProjectChallengeFromJson(json);
}

@freezed
abstract class ProjectResult with _$ProjectResult {
  const factory ProjectResult({
    required String value,
    required LocalizedString label,
    LocalizedString? description,
  }) = _ProjectResult;

  factory ProjectResult.fromJson(Map<String, dynamic> json) =>
      _$ProjectResultFromJson(json);
}

@freezed
abstract class ProjectImage with _$ProjectImage {
  const factory ProjectImage({
    required String path,
    required LocalizedString alt,
  }) = _ProjectImage;

  factory ProjectImage.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageFromJson(json);
}

@freezed
abstract class ProjectGalleryItem with _$ProjectGalleryItem {
  const factory ProjectGalleryItem({
    required String type,
    required String path,
    required LocalizedString alt,
    LocalizedString? caption,
    @Default(0) int sortOrder,
  }) = _ProjectGalleryItem;

  factory ProjectGalleryItem.fromJson(Map<String, dynamic> json) =>
      _$ProjectGalleryItemFromJson(json);
}

@freezed
abstract class ProjectLink with _$ProjectLink {
  const factory ProjectLink({
    required String type,
    required String url,
    @Default(true) bool isVisible,
  }) = _ProjectLink;

  factory ProjectLink.fromJson(Map<String, dynamic> json) =>
      _$ProjectLinkFromJson(json);
}

@freezed
abstract class Experience with _$Experience {
  const factory Experience({
    required String id,
    required String organization,
    required LocalizedString role,
    String? location,
    required String startDate,
    String? endDate,
    @Default(false) bool isCurrent,
    required LocalizedString description,
    @Default(<LocalizedString>[]) List<LocalizedString> responsibilities,
    @Default(<String>[]) List<String> technologies,
    String? logo,
    String? website,
    @Default(0) int sortOrder,
    @Default(true) bool isVisible,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);
}

@freezed
abstract class SocialLink with _$SocialLink {
  const factory SocialLink({
    required String id,
    required String platform,
    required String url,
    required String icon,
    @Default(0) int sortOrder,
    @Default(true) bool isVisible,
  }) = _SocialLink;

  factory SocialLink.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkFromJson(json);
}

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    String? email,
    required String location,
    @Default(false) bool contactFormEnabled,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
