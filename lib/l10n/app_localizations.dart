import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
  ];

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get navAbout;

  /// No description provided for @navProjects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get navProjects;

  /// No description provided for @navExperience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get navExperience;

  /// No description provided for @navContact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get navContact;

  /// No description provided for @letsTalk.
  ///
  /// In en, this message translates to:
  /// **'Let\'s Talk'**
  String get letsTalk;

  /// No description provided for @viewMyWork.
  ///
  /// In en, this message translates to:
  /// **'View My Work'**
  String get viewMyWork;

  /// No description provided for @downloadCv.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get downloadCv;

  /// No description provided for @scrollToExplore.
  ///
  /// In en, this message translates to:
  /// **'Scroll to explore'**
  String get scrollToExplore;

  /// No description provided for @allProjects.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allProjects;

  /// No description provided for @softwareDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Software Development'**
  String get softwareDevelopment;

  /// No description provided for @webDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get webDevelopment;

  /// No description provided for @creativeDesign.
  ///
  /// In en, this message translates to:
  /// **'Creative Design'**
  String get creativeDesign;

  /// No description provided for @viewProject.
  ///
  /// In en, this message translates to:
  /// **'View Project'**
  String get viewProject;

  /// No description provided for @viewAllProjects.
  ///
  /// In en, this message translates to:
  /// **'View All Projects'**
  String get viewAllProjects;

  /// No description provided for @visitWebsite.
  ///
  /// In en, this message translates to:
  /// **'Visit Website'**
  String get visitWebsite;

  /// No description provided for @viewSourceCode.
  ///
  /// In en, this message translates to:
  /// **'View Source Code'**
  String get viewSourceCode;

  /// No description provided for @backToProjects.
  ///
  /// In en, this message translates to:
  /// **'Back to Projects'**
  String get backToProjects;

  /// No description provided for @projectOverview.
  ///
  /// In en, this message translates to:
  /// **'Project Overview'**
  String get projectOverview;

  /// No description provided for @problem.
  ///
  /// In en, this message translates to:
  /// **'Problem'**
  String get problem;

  /// No description provided for @solution.
  ///
  /// In en, this message translates to:
  /// **'Solution'**
  String get solution;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'My Role'**
  String get role;

  /// No description provided for @responsibilities.
  ///
  /// In en, this message translates to:
  /// **'Responsibilities'**
  String get responsibilities;

  /// No description provided for @features.
  ///
  /// In en, this message translates to:
  /// **'Key Features'**
  String get features;

  /// No description provided for @challenges.
  ///
  /// In en, this message translates to:
  /// **'Challenges'**
  String get challenges;

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results;

  /// No description provided for @lessonsLearned.
  ///
  /// In en, this message translates to:
  /// **'Lessons Learned'**
  String get lessonsLearned;

  /// No description provided for @technologies.
  ///
  /// In en, this message translates to:
  /// **'Technologies'**
  String get technologies;

  /// No description provided for @platforms.
  ///
  /// In en, this message translates to:
  /// **'Platforms'**
  String get platforms;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Project Gallery'**
  String get gallery;

  /// No description provided for @client.
  ///
  /// In en, this message translates to:
  /// **'Client'**
  String get client;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Present'**
  String get current;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// No description provided for @getInTouch.
  ///
  /// In en, this message translates to:
  /// **'Get in Touch'**
  String get getInTouch;

  /// No description provided for @sendMessage.
  ///
  /// In en, this message translates to:
  /// **'Send Message'**
  String get sendMessage;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @followMe.
  ///
  /// In en, this message translates to:
  /// **'Follow Me'**
  String get followMe;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading portfolio...'**
  String get loading;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get somethingWentWrong;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @projectNotFound.
  ///
  /// In en, this message translates to:
  /// **'Project not found.'**
  String get projectNotFound;

  /// No description provided for @builtWithFlutter.
  ///
  /// In en, this message translates to:
  /// **'Built with Flutter'**
  String get builtWithFlutter;

  /// No description provided for @allRightsReserved.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved.'**
  String get allRightsReserved;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @german.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// No description provided for @toolsBehindMyWork.
  ///
  /// In en, this message translates to:
  /// **'Tools behind my work'**
  String get toolsBehindMyWork;

  /// No description provided for @languagesSpoken.
  ///
  /// In en, this message translates to:
  /// **'Languages spoken'**
  String get languagesSpoken;

  /// No description provided for @yearsExperience.
  ///
  /// In en, this message translates to:
  /// **'Years of experience'**
  String get yearsExperience;

  /// No description provided for @projectsDelivered.
  ///
  /// In en, this message translates to:
  /// **'Projects delivered'**
  String get projectsDelivered;

  /// No description provided for @clientCollaborations.
  ///
  /// In en, this message translates to:
  /// **'Client collaborations'**
  String get clientCollaborations;

  /// No description provided for @projectsSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projectsSectionLabel;

  /// No description provided for @projectsSectionHeadline.
  ///
  /// In en, this message translates to:
  /// **'Selected work built around real problems.'**
  String get projectsSectionHeadline;

  /// No description provided for @projectsSectionDescription.
  ///
  /// In en, this message translates to:
  /// **'Software applications, web solutions and creative work presented through the decisions and problems behind them.'**
  String get projectsSectionDescription;

  /// No description provided for @projectFilterSoftware.
  ///
  /// In en, this message translates to:
  /// **'Software Development'**
  String get projectFilterSoftware;

  /// No description provided for @projectFilterWeb.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get projectFilterWeb;

  /// No description provided for @projectFilterCreative.
  ///
  /// In en, this message translates to:
  /// **'Creative Design'**
  String get projectFilterCreative;

  /// No description provided for @projectCategorySoftware.
  ///
  /// In en, this message translates to:
  /// **'Software'**
  String get projectCategorySoftware;

  /// No description provided for @projectCategoryWeb.
  ///
  /// In en, this message translates to:
  /// **'Web'**
  String get projectCategoryWeb;

  /// No description provided for @projectCategoryCreative.
  ///
  /// In en, this message translates to:
  /// **'Creative'**
  String get projectCategoryCreative;

  /// No description provided for @projectStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get projectStatusCompleted;

  /// No description provided for @projectStatusInProgress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get projectStatusInProgress;

  /// No description provided for @projectViewAction.
  ///
  /// In en, this message translates to:
  /// **'View project'**
  String get projectViewAction;

  /// No description provided for @projectsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No projects published in this category yet.'**
  String get projectsEmptyTitle;

  /// No description provided for @projectsEmptyDescription.
  ///
  /// In en, this message translates to:
  /// **'New work will be added here soon.'**
  String get projectsEmptyDescription;

  /// No description provided for @pageNotFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get pageNotFoundTitle;

  /// No description provided for @pageNotFoundDescription.
  ///
  /// In en, this message translates to:
  /// **'The page you are looking for does not exist or may have been moved.'**
  String get pageNotFoundDescription;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backToHome;

  /// No description provided for @experienceSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experienceSectionLabel;

  /// No description provided for @experienceSectionHeadline.
  ///
  /// In en, this message translates to:
  /// **'Experience built through independent work and real client responsibility.'**
  String get experienceSectionHeadline;

  /// No description provided for @experienceSectionDescription.
  ///
  /// In en, this message translates to:
  /// **'A professional journey across software development, digital solutions and visual communication.'**
  String get experienceSectionDescription;

  /// No description provided for @experienceCurrent.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get experienceCurrent;

  /// No description provided for @experiencePresent.
  ///
  /// In en, this message translates to:
  /// **'Present'**
  String get experiencePresent;

  /// No description provided for @experienceResponsibilities.
  ///
  /// In en, this message translates to:
  /// **'Responsibilities'**
  String get experienceResponsibilities;

  /// No description provided for @experienceTechnologies.
  ///
  /// In en, this message translates to:
  /// **'Technologies'**
  String get experienceTechnologies;

  /// No description provided for @experienceVisitWebsite.
  ///
  /// In en, this message translates to:
  /// **'Visit website'**
  String get experienceVisitWebsite;

  /// No description provided for @contactSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contactSectionLabel;

  /// No description provided for @contactSectionHeadline.
  ///
  /// In en, this message translates to:
  /// **'Have an opportunity, a project, or an idea?'**
  String get contactSectionHeadline;

  /// No description provided for @contactSectionDescription.
  ///
  /// In en, this message translates to:
  /// **'Whether it is a software role, an apprenticeship, an internship or a digital project, I would be glad to hear from you.'**
  String get contactSectionDescription;

  /// No description provided for @contactPanelLabel.
  ///
  /// In en, this message translates to:
  /// **'Let\'s talk'**
  String get contactPanelLabel;

  /// No description provided for @contactEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get contactEmailLabel;

  /// No description provided for @contactEmailDescription.
  ///
  /// In en, this message translates to:
  /// **'The quickest and most direct way to reach me.'**
  String get contactEmailDescription;

  /// No description provided for @contactSendEmail.
  ///
  /// In en, this message translates to:
  /// **'Send an email'**
  String get contactSendEmail;

  /// No description provided for @contactCopyEmail.
  ///
  /// In en, this message translates to:
  /// **'Copy email'**
  String get contactCopyEmail;

  /// No description provided for @contactEmailCopied.
  ///
  /// In en, this message translates to:
  /// **'Email copied'**
  String get contactEmailCopied;

  /// No description provided for @contactLinksLabel.
  ///
  /// In en, this message translates to:
  /// **'Elsewhere'**
  String get contactLinksLabel;

  /// No description provided for @contactOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get contactOpenLink;

  /// No description provided for @contactDownloadCv.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get contactDownloadCv;

  /// No description provided for @contactCvFormat.
  ///
  /// In en, this message translates to:
  /// **'PDF · English'**
  String get contactCvFormat;

  /// No description provided for @contactActionFailed.
  ///
  /// In en, this message translates to:
  /// **'The action could not be completed. Please try again.'**
  String get contactActionFailed;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
