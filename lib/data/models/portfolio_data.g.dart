// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PortfolioData _$PortfolioDataFromJson(Map<String, dynamic> json) =>
    _PortfolioData(
      schemaVersion: (json['schemaVersion'] as num).toInt(),
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
      about: About.fromJson(json['about'] as Map<String, dynamic>),
      statistics:
          (json['statistics'] as List<dynamic>?)
              ?.map(
                (e) => PortfolioStatistic.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <PortfolioStatistic>[],
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Skill>[],
      tools: (json['tools'] as List<dynamic>)
          .map((e) => PortfolioTool.fromJson(e as Map<String, dynamic>))
          .toList(),
      projects:
          (json['projects'] as List<dynamic>?)
              ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Project>[],
      experience:
          (json['experience'] as List<dynamic>?)
              ?.map((e) => Experience.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Experience>[],
      socialLinks:
          (json['socialLinks'] as List<dynamic>?)
              ?.map((e) => SocialLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SocialLink>[],
      contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PortfolioDataToJson(_PortfolioData instance) =>
    <String, dynamic>{
      'schemaVersion': instance.schemaVersion,
      'profile': instance.profile.toJson(),
      'about': instance.about.toJson(),
      'statistics': instance.statistics.map((e) => e.toJson()).toList(),
      'skills': instance.skills.map((e) => e.toJson()).toList(),
      'tools': instance.tools.map((e) => e.toJson()).toList(),
      'projects': instance.projects.map((e) => e.toJson()).toList(),
      'experience': instance.experience.map((e) => e.toJson()).toList(),
      'socialLinks': instance.socialLinks.map((e) => e.toJson()).toList(),
      'contact': instance.contact.toJson(),
    };

_LocalizedString _$LocalizedStringFromJson(Map<String, dynamic> json) =>
    _LocalizedString(en: json['en'] as String, de: json['de'] as String);

Map<String, dynamic> _$LocalizedStringToJson(_LocalizedString instance) =>
    <String, dynamic>{'en': instance.en, 'de': instance.de};

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  name: json['name'] as String,
  nickname: json['nickname'] as String,
  location: json['location'] as String,
  portrait: json['portrait'] as String,
  professionalTitle: LocalizedString.fromJson(
    json['professionalTitle'] as Map<String, dynamic>,
  ),
  introduction: LocalizedString.fromJson(
    json['introduction'] as Map<String, dynamic>,
  ),
  availability: Availability.fromJson(
    json['availability'] as Map<String, dynamic>,
  ),
  cv: LocalizedString.fromJson(json['cv'] as Map<String, dynamic>),
  languages:
      (json['languages'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'name': instance.name,
  'nickname': instance.nickname,
  'location': instance.location,
  'portrait': instance.portrait,
  'professionalTitle': instance.professionalTitle.toJson(),
  'introduction': instance.introduction.toJson(),
  'availability': instance.availability.toJson(),
  'cv': instance.cv.toJson(),
  'languages': instance.languages,
};

_Availability _$AvailabilityFromJson(Map<String, dynamic> json) =>
    _Availability(
      isAvailable: json['isAvailable'] as bool,
      text: LocalizedString.fromJson(json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AvailabilityToJson(_Availability instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'text': instance.text.toJson(),
    };

_About _$AboutFromJson(Map<String, dynamic> json) => _About(
  title: LocalizedString.fromJson(json['title'] as Map<String, dynamic>),
  headline: LocalizedString.fromJson(json['headline'] as Map<String, dynamic>),
  paragraphs: (json['paragraphs'] as List<dynamic>)
      .map((e) => LocalizedString.fromJson(e as Map<String, dynamic>))
      .toList(),
  highlights: (json['highlights'] as List<dynamic>)
      .map((e) => AboutHighlight.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AboutToJson(_About instance) => <String, dynamic>{
  'title': instance.title.toJson(),
  'headline': instance.headline.toJson(),
  'paragraphs': instance.paragraphs.map((e) => e.toJson()).toList(),
  'highlights': instance.highlights.map((e) => e.toJson()).toList(),
};

_AboutHighlight _$AboutHighlightFromJson(Map<String, dynamic> json) =>
    _AboutHighlight(
      icon: json['icon'] as String,
      title: LocalizedString.fromJson(json['title'] as Map<String, dynamic>),
      description: LocalizedString.fromJson(
        json['description'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AboutHighlightToJson(_AboutHighlight instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
    };

_PortfolioStatistic _$PortfolioStatisticFromJson(Map<String, dynamic> json) =>
    _PortfolioStatistic(
      id: json['id'] as String,
      value: json['value'] as String,
      label: LocalizedString.fromJson(json['label'] as Map<String, dynamic>),
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      isVisible: json['isVisible'] as bool? ?? true,
    );

Map<String, dynamic> _$PortfolioStatisticToJson(_PortfolioStatistic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'label': instance.label.toJson(),
      'sortOrder': instance.sortOrder,
      'isVisible': instance.isVisible,
    };

_Skill _$SkillFromJson(Map<String, dynamic> json) => _Skill(
  id: json['id'] as String,
  title: LocalizedString.fromJson(json['title'] as Map<String, dynamic>),
  description: LocalizedString.fromJson(
    json['description'] as Map<String, dynamic>,
  ),
  icon: json['icon'] as String,
  items:
      (json['items'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isVisible: json['isVisible'] as bool? ?? true,
);

Map<String, dynamic> _$SkillToJson(_Skill instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title.toJson(),
  'description': instance.description.toJson(),
  'icon': instance.icon,
  'items': instance.items,
  'sortOrder': instance.sortOrder,
  'isVisible': instance.isVisible,
};

_PortfolioTool _$PortfolioToolFromJson(Map<String, dynamic> json) =>
    _PortfolioTool(
      id: json['id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      isVisible: json['isVisible'] as bool,
    );

Map<String, dynamic> _$PortfolioToolToJson(_PortfolioTool instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'sortOrder': instance.sortOrder,
      'isVisible': instance.isVisible,
    };

_Project _$ProjectFromJson(Map<String, dynamic> json) => _Project(
  id: json['id'] as String,
  slug: json['slug'] as String,
  isSample: json['isSample'] as bool? ?? false,
  category: json['category'] as String,
  status: json['status'] as String,
  year: (json['year'] as num).toInt(),
  featured: json['featured'] as bool,
  isVisible: json['isVisible'] as bool? ?? true,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  title: LocalizedString.fromJson(json['title'] as Map<String, dynamic>),
  role: LocalizedString.fromJson(json['role'] as Map<String, dynamic>),
  client: json['client'] == null
      ? null
      : LocalizedString.fromJson(json['client'] as Map<String, dynamic>),
  shortDescription: LocalizedString.fromJson(
    json['shortDescription'] as Map<String, dynamic>,
  ),
  fullDescription: LocalizedString.fromJson(
    json['fullDescription'] as Map<String, dynamic>,
  ),
  problem: json['problem'] == null
      ? null
      : LocalizedString.fromJson(json['problem'] as Map<String, dynamic>),
  solution: json['solution'] == null
      ? null
      : LocalizedString.fromJson(json['solution'] as Map<String, dynamic>),
  responsibilities:
      (json['responsibilities'] as List<dynamic>?)
          ?.map((e) => LocalizedString.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LocalizedString>[],
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => LocalizedString.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LocalizedString>[],
  challenges:
      (json['challenges'] as List<dynamic>?)
          ?.map((e) => ProjectChallenge.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProjectChallenge>[],
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => ProjectResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProjectResult>[],
  lessonsLearned:
      (json['lessonsLearned'] as List<dynamic>?)
          ?.map((e) => LocalizedString.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LocalizedString>[],
  technologies:
      (json['technologies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  platforms:
      (json['platforms'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  thumbnailImage: json['thumbnailImage'] == null
      ? null
      : ProjectImage.fromJson(json['thumbnailImage'] as Map<String, dynamic>),
  coverImage: ProjectImage.fromJson(json['coverImage'] as Map<String, dynamic>),
  gallery:
      (json['gallery'] as List<dynamic>?)
          ?.map((e) => ProjectGalleryItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProjectGalleryItem>[],
  links:
      (json['links'] as List<dynamic>?)
          ?.map((e) => ProjectLink.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProjectLink>[],
);

Map<String, dynamic> _$ProjectToJson(_Project instance) => <String, dynamic>{
  'id': instance.id,
  'slug': instance.slug,
  'isSample': instance.isSample,
  'category': instance.category,
  'status': instance.status,
  'year': instance.year,
  'featured': instance.featured,
  'isVisible': instance.isVisible,
  'sortOrder': instance.sortOrder,
  'title': instance.title.toJson(),
  'role': instance.role.toJson(),
  'client': instance.client?.toJson(),
  'shortDescription': instance.shortDescription.toJson(),
  'fullDescription': instance.fullDescription.toJson(),
  'problem': instance.problem?.toJson(),
  'solution': instance.solution?.toJson(),
  'responsibilities': instance.responsibilities.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'challenges': instance.challenges.map((e) => e.toJson()).toList(),
  'results': instance.results.map((e) => e.toJson()).toList(),
  'lessonsLearned': instance.lessonsLearned.map((e) => e.toJson()).toList(),
  'technologies': instance.technologies,
  'platforms': instance.platforms,
  'tags': instance.tags,
  'thumbnailImage': instance.thumbnailImage?.toJson(),
  'coverImage': instance.coverImage.toJson(),
  'gallery': instance.gallery.map((e) => e.toJson()).toList(),
  'links': instance.links.map((e) => e.toJson()).toList(),
};

_ProjectChallenge _$ProjectChallengeFromJson(Map<String, dynamic> json) =>
    _ProjectChallenge(
      title: LocalizedString.fromJson(json['title'] as Map<String, dynamic>),
      description: LocalizedString.fromJson(
        json['description'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ProjectChallengeToJson(_ProjectChallenge instance) =>
    <String, dynamic>{
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
    };

_ProjectResult _$ProjectResultFromJson(Map<String, dynamic> json) =>
    _ProjectResult(
      value: json['value'] as String,
      label: LocalizedString.fromJson(json['label'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : LocalizedString.fromJson(
              json['description'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProjectResultToJson(_ProjectResult instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label.toJson(),
      'description': instance.description?.toJson(),
    };

_ProjectImage _$ProjectImageFromJson(Map<String, dynamic> json) =>
    _ProjectImage(
      path: json['path'] as String,
      alt: LocalizedString.fromJson(json['alt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectImageToJson(_ProjectImage instance) =>
    <String, dynamic>{'path': instance.path, 'alt': instance.alt.toJson()};

_ProjectGalleryItem _$ProjectGalleryItemFromJson(Map<String, dynamic> json) =>
    _ProjectGalleryItem(
      type: json['type'] as String,
      path: json['path'] as String,
      alt: LocalizedString.fromJson(json['alt'] as Map<String, dynamic>),
      caption: json['caption'] == null
          ? null
          : LocalizedString.fromJson(json['caption'] as Map<String, dynamic>),
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ProjectGalleryItemToJson(_ProjectGalleryItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'path': instance.path,
      'alt': instance.alt.toJson(),
      'caption': instance.caption?.toJson(),
      'sortOrder': instance.sortOrder,
    };

_ProjectLink _$ProjectLinkFromJson(Map<String, dynamic> json) => _ProjectLink(
  type: json['type'] as String,
  url: json['url'] as String,
  isVisible: json['isVisible'] as bool? ?? true,
);

Map<String, dynamic> _$ProjectLinkToJson(_ProjectLink instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'isVisible': instance.isVisible,
    };

_Experience _$ExperienceFromJson(Map<String, dynamic> json) => _Experience(
  id: json['id'] as String,
  organization: json['organization'] as String,
  role: LocalizedString.fromJson(json['role'] as Map<String, dynamic>),
  location: json['location'] as String?,
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String?,
  isCurrent: json['isCurrent'] as bool? ?? false,
  description: LocalizedString.fromJson(
    json['description'] as Map<String, dynamic>,
  ),
  responsibilities:
      (json['responsibilities'] as List<dynamic>?)
          ?.map((e) => LocalizedString.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LocalizedString>[],
  technologies:
      (json['technologies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  logo: json['logo'] as String?,
  website: json['website'] as String?,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isVisible: json['isVisible'] as bool? ?? true,
);

Map<String, dynamic> _$ExperienceToJson(
  _Experience instance,
) => <String, dynamic>{
  'id': instance.id,
  'organization': instance.organization,
  'role': instance.role.toJson(),
  'location': instance.location,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'isCurrent': instance.isCurrent,
  'description': instance.description.toJson(),
  'responsibilities': instance.responsibilities.map((e) => e.toJson()).toList(),
  'technologies': instance.technologies,
  'logo': instance.logo,
  'website': instance.website,
  'sortOrder': instance.sortOrder,
  'isVisible': instance.isVisible,
};

_SocialLink _$SocialLinkFromJson(Map<String, dynamic> json) => _SocialLink(
  id: json['id'] as String,
  platform: json['platform'] as String,
  url: json['url'] as String,
  icon: json['icon'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isVisible: json['isVisible'] as bool? ?? true,
);

Map<String, dynamic> _$SocialLinkToJson(_SocialLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform': instance.platform,
      'url': instance.url,
      'icon': instance.icon,
      'sortOrder': instance.sortOrder,
      'isVisible': instance.isVisible,
    };

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  email: json['email'] as String?,
  location: json['location'] as String,
  contactFormEnabled: json['contactFormEnabled'] as bool? ?? false,
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'email': instance.email,
  'location': instance.location,
  'contactFormEnabled': instance.contactFormEnabled,
};
