import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @aProfessionalCoverLetterCanGiveYouMoreOpportunities.
  ///
  /// In en, this message translates to:
  /// **'A professional cover letter can give you more opportunities.'**
  String get aProfessionalCoverLetterCanGiveYouMoreOpportunities;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutHint.
  ///
  /// In en, this message translates to:
  /// **'Describe your self'**
  String get aboutHint;

  /// No description provided for @aboutYourSelf.
  ///
  /// In en, this message translates to:
  /// **'About Your Self'**
  String get aboutYourSelf;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addBasicInfo.
  ///
  /// In en, this message translates to:
  /// **'Add Basic Infor'**
  String get addBasicInfo;

  /// No description provided for @addBasicInformation.
  ///
  /// In en, this message translates to:
  /// **'Add Basic Information'**
  String get addBasicInformation;

  /// No description provided for @addNewCertificate.
  ///
  /// In en, this message translates to:
  /// **'Add New Certificate'**
  String get addNewCertificate;

  /// No description provided for @addNewCertificateFailed.
  ///
  /// In en, this message translates to:
  /// **'Add new certificate failed'**
  String get addNewCertificateFailed;

  /// No description provided for @addNewEducation.
  ///
  /// In en, this message translates to:
  /// **'Add New Education'**
  String get addNewEducation;

  /// No description provided for @addNewEducationFailed.
  ///
  /// In en, this message translates to:
  /// **'Add new education failed'**
  String get addNewEducationFailed;

  /// No description provided for @addNewExperience.
  ///
  /// In en, this message translates to:
  /// **'Add New Experience'**
  String get addNewExperience;

  /// No description provided for @addNewExperienceFailed.
  ///
  /// In en, this message translates to:
  /// **'Add new experience failed'**
  String get addNewExperienceFailed;

  /// No description provided for @addNewLanguage.
  ///
  /// In en, this message translates to:
  /// **'Add new language'**
  String get addNewLanguage;

  /// No description provided for @addSuccess.
  ///
  /// In en, this message translates to:
  /// **'Add success'**
  String get addSuccess;

  /// No description provided for @addYourCharacter.
  ///
  /// In en, this message translates to:
  /// **'Add your character'**
  String get addYourCharacter;

  /// No description provided for @addYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Add Your Profile'**
  String get addYourProfile;

  /// No description provided for @aggressive.
  ///
  /// In en, this message translates to:
  /// **'Aggessive'**
  String get aggressive;

  /// No description provided for @ai.
  ///
  /// In en, this message translates to:
  /// **'AI'**
  String get ai;

  /// No description provided for @aiCharacter.
  ///
  /// In en, this message translates to:
  /// **'AI Character'**
  String get aiCharacter;

  /// No description provided for @aiFeature.
  ///
  /// In en, this message translates to:
  /// **'AI Features'**
  String get aiFeature;

  /// No description provided for @aiFeatures.
  ///
  /// In en, this message translates to:
  /// **'AI Features'**
  String get aiFeatures;

  /// No description provided for @aiTools.
  ///
  /// In en, this message translates to:
  /// **'AI Tools'**
  String get aiTools;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @archived.
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get archived;

  /// No description provided for @areYouWantToDeleteYourExperience.
  ///
  /// In en, this message translates to:
  /// **'Are you want to delete your experience?'**
  String get areYouWantToDeleteYourExperience;

  /// No description provided for @asset.
  ///
  /// In en, this message translates to:
  /// **'Asset'**
  String get asset;

  /// No description provided for @atLeastAt1Image.
  ///
  /// In en, this message translates to:
  /// **'At least at 1 image'**
  String get atLeastAt1Image;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get attachment;

  /// No description provided for @author.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get author;

  /// No description provided for @autoGenerationHistory.
  ///
  /// In en, this message translates to:
  /// **'Auto Generation History'**
  String get autoGenerationHistory;

  /// No description provided for @autoTechnology.
  ///
  /// In en, this message translates to:
  /// **'Auto technology'**
  String get autoTechnology;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @basicInformation.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get basicInformation;

  /// No description provided for @beCarefullWhenClickOk.
  ///
  /// In en, this message translates to:
  /// **'Be careful when click OK'**
  String get beCarefullWhenClickOk;

  /// No description provided for @bio.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get bio;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @btc.
  ///
  /// In en, this message translates to:
  /// **'BTC'**
  String get btc;

  /// No description provided for @buyDP1.
  ///
  /// In en, this message translates to:
  /// **'Buy DP1'**
  String get buyDP1;

  /// No description provided for @byCreatingAFreeAccount.
  ///
  /// In en, this message translates to:
  /// **'by creating a free account.'**
  String get byCreatingAFreeAccount;

  /// No description provided for @bySigningUpIAgree.
  ///
  /// In en, this message translates to:
  /// **'By signing up I agree that I’m 18 years of age or older, to the '**
  String get bySigningUpIAgree;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @cannotCreateDigitalProfile.
  ///
  /// In en, this message translates to:
  /// **'Cannot create digital profile'**
  String get cannotCreateDigitalProfile;

  /// No description provided for @certificate.
  ///
  /// In en, this message translates to:
  /// **'Certificate'**
  String get certificate;

  /// No description provided for @certificateName.
  ///
  /// In en, this message translates to:
  /// **'Certificate Name'**
  String get certificateName;

  /// No description provided for @certificates.
  ///
  /// In en, this message translates to:
  /// **'Certificates'**
  String get certificates;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @changeCreationStepFailed.
  ///
  /// In en, this message translates to:
  /// **'Change creation\'s step failed'**
  String get changeCreationStepFailed;

  /// No description provided for @changeGptFailed.
  ///
  /// In en, this message translates to:
  /// **'change gpt failed'**
  String get changeGptFailed;

  /// No description provided for @character.
  ///
  /// In en, this message translates to:
  /// **'Character'**
  String get character;

  /// No description provided for @characters.
  ///
  /// In en, this message translates to:
  /// **'Characters'**
  String get characters;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @chatMore.
  ///
  /// In en, this message translates to:
  /// **'Chat More'**
  String get chatMore;

  /// No description provided for @chatty.
  ///
  /// In en, this message translates to:
  /// **'Chatty'**
  String get chatty;

  /// No description provided for @checkYourEmailAgain.
  ///
  /// In en, this message translates to:
  /// **'Check your email again!'**
  String get checkYourEmailAgain;

  /// No description provided for @checkYourEmailOrPasswordAgain.
  ///
  /// In en, this message translates to:
  /// **'Check your email or password again'**
  String get checkYourEmailOrPasswordAgain;

  /// No description provided for @checkYourInfoAgain.
  ///
  /// In en, this message translates to:
  /// **'Check your info again'**
  String get checkYourInfoAgain;

  /// No description provided for @checkYourKeywordAgain.
  ///
  /// In en, this message translates to:
  /// **'Check your keyword again'**
  String get checkYourKeywordAgain;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAll;

  /// No description provided for @codeWasResend.
  ///
  /// In en, this message translates to:
  /// **'Code was resend'**
  String get codeWasResend;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get company;

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'Company name'**
  String get companyName;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @confirmPasswordIsNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Confirm password is not match'**
  String get confirmPasswordIsNotMatch;

  /// No description provided for @connectWallet.
  ///
  /// In en, this message translates to:
  /// **'Connect wallet'**
  String get connectWallet;

  /// No description provided for @connectWalletDescription.
  ///
  /// In en, this message translates to:
  /// **'You need a Crypto Wallet Address to register an account in dProfiles. Try creating a crypto wallet at Metamask.'**
  String get connectWalletDescription;

  /// No description provided for @connectYourWallet.
  ///
  /// In en, this message translates to:
  /// **'Connect your Wallet'**
  String get connectYourWallet;

  /// No description provided for @contentCannotNull.
  ///
  /// In en, this message translates to:
  /// **'Content can not null'**
  String get contentCannotNull;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @conversations.
  ///
  /// In en, this message translates to:
  /// **'Conversations'**
  String get conversations;

  /// No description provided for @converts.
  ///
  /// In en, this message translates to:
  /// **'Converts'**
  String get converts;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @couldNotLaunch.
  ///
  /// In en, this message translates to:
  /// **'Could not launch'**
  String get couldNotLaunch;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @createAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get createAnAccount;

  /// No description provided for @createAnAccountFailed.
  ///
  /// In en, this message translates to:
  /// **'Create an account failed'**
  String get createAnAccountFailed;

  /// No description provided for @createBotSuccess.
  ///
  /// In en, this message translates to:
  /// **'Create bot success'**
  String get createBotSuccess;

  /// No description provided for @createDProile.
  ///
  /// In en, this message translates to:
  /// **'Create dProfile'**
  String get createDProile;

  /// No description provided for @createDigitalProfile.
  ///
  /// In en, this message translates to:
  /// **'Create Digital Profile'**
  String get createDigitalProfile;

  /// No description provided for @createDigitalProfileOnTheBlockchain.
  ///
  /// In en, this message translates to:
  /// **'Create Digital Profile on the Blockchain'**
  String get createDigitalProfileOnTheBlockchain;

  /// No description provided for @createNewDProfile.
  ///
  /// In en, this message translates to:
  /// **'Create New dProfile'**
  String get createNewDProfile;

  /// No description provided for @createPost.
  ///
  /// In en, this message translates to:
  /// **'Create post'**
  String get createPost;

  /// No description provided for @createPostSuccess.
  ///
  /// In en, this message translates to:
  /// **'Create post success'**
  String get createPostSuccess;

  /// No description provided for @createYourAiCharacter.
  ///
  /// In en, this message translates to:
  /// **'Create your AI character'**
  String get createYourAiCharacter;

  /// No description provided for @createYourHeadlineNow.
  ///
  /// In en, this message translates to:
  /// **'Create Your Headline now'**
  String get createYourHeadlineNow;

  /// No description provided for @credentialID.
  ///
  /// In en, this message translates to:
  /// **'Credential ID'**
  String get credentialID;

  /// No description provided for @credentialURL.
  ///
  /// In en, this message translates to:
  /// **'Credential URL'**
  String get credentialURL;

  /// No description provided for @cryptoWallet.
  ///
  /// In en, this message translates to:
  /// **'Crypto Wallet'**
  String get cryptoWallet;

  /// No description provided for @dProfile.
  ///
  /// In en, this message translates to:
  /// **'dProfile'**
  String get dProfile;

  /// No description provided for @dProfilesOpensSales.
  ///
  /// In en, this message translates to:
  /// **'dProfiles opens sales of \$DP1 Tokens'**
  String get dProfilesOpensSales;

  /// No description provided for @dangerousActivitiesAndChallenges.
  ///
  /// In en, this message translates to:
  /// **'Dangerous activities and challenges'**
  String get dangerousActivitiesAndChallenges;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @dateTimeFormatddmmyyyyy.
  ///
  /// In en, this message translates to:
  /// **'dd/mm/yyyy'**
  String get dateTimeFormatddmmyyyyy;

  /// No description provided for @dateTimeformatValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid date of birth (dd/mm/yyyy)'**
  String get dateTimeformatValidation;

  /// No description provided for @dean.
  ///
  /// In en, this message translates to:
  /// **'Dean'**
  String get dean;

  /// No description provided for @degree.
  ///
  /// In en, this message translates to:
  /// **'Degree'**
  String get degree;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete account failed'**
  String get deleteAccountFailed;

  /// No description provided for @deleteCertificateFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete certificate failed'**
  String get deleteCertificateFailed;

  /// No description provided for @deleteEducationFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete education failed'**
  String get deleteEducationFailed;

  /// No description provided for @deleteExperienceFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete experience failed'**
  String get deleteExperienceFailed;

  /// No description provided for @deleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete  failed'**
  String get deleteFailed;

  /// No description provided for @describeSomethingAboutYourBot.
  ///
  /// In en, this message translates to:
  /// **'Describe something about your bot'**
  String get describeSomethingAboutYourBot;

  /// No description provided for @describeYourSelf.
  ///
  /// In en, this message translates to:
  /// **'Describe your self'**
  String get describeYourSelf;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @descriptionOnboarding1.
  ///
  /// In en, this message translates to:
  /// **'Create profile on Blockchain Network, job platform, and crypto payment tools.'**
  String get descriptionOnboarding1;

  /// No description provided for @descriptionOnboarding2.
  ///
  /// In en, this message translates to:
  /// **'A lot of AI tools will help speed up the job application process and improve your chances of success.'**
  String get descriptionOnboarding2;

  /// No description provided for @descriptionOnboarding3.
  ///
  /// In en, this message translates to:
  /// **'Users can find jobs and read helpful articles from KOLs or people that they followed.'**
  String get descriptionOnboarding3;

  /// No description provided for @didntReceiveAnyCode.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive any code?'**
  String get didntReceiveAnyCode;

  /// No description provided for @digitalProfile.
  ///
  /// In en, this message translates to:
  /// **'Digital Profile'**
  String get digitalProfile;

  /// No description provided for @disconnectWallet.
  ///
  /// In en, this message translates to:
  /// **'Disconnect wallet'**
  String get disconnectWallet;

  /// No description provided for @discover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get discover;

  /// No description provided for @discoverAICharacterBotNow.
  ///
  /// In en, this message translates to:
  /// **'Discover AI Character Bot now!'**
  String get discoverAICharacterBotNow;

  /// No description provided for @disorderedEatingAndUnhealthyBodyImage.
  ///
  /// In en, this message translates to:
  /// **'Disordered eating and unhealthy body image'**
  String get disorderedEatingAndUnhealthyBodyImage;

  /// No description provided for @dob.
  ///
  /// In en, this message translates to:
  /// **'dob'**
  String get dob;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account'**
  String get dontHaveAnAccount;

  /// No description provided for @dp1.
  ///
  /// In en, this message translates to:
  /// **'DP1'**
  String get dp1;

  /// No description provided for @editCertificates.
  ///
  /// In en, this message translates to:
  /// **'Edit Certificates'**
  String get editCertificates;

  /// No description provided for @editEducation.
  ///
  /// In en, this message translates to:
  /// **'Edit Education'**
  String get editEducation;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @educationInformation.
  ///
  /// In en, this message translates to:
  /// **'Education Information'**
  String get educationInformation;

  /// No description provided for @educations.
  ///
  /// In en, this message translates to:
  /// **'Educations'**
  String get educations;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddress;

  /// No description provided for @emailCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **' Email cannot be empty'**
  String get emailCannotBeEmpty;

  /// No description provided for @emailInvalidate.
  ///
  /// In en, this message translates to:
  /// **'Email invalidate'**
  String get emailInvalidate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @energetic.
  ///
  /// In en, this message translates to:
  /// **'Energetic'**
  String get energetic;

  /// No description provided for @enterEmailToResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to receive an email to reset your password'**
  String get enterEmailToResetPassword;

  /// No description provided for @enterYourAccountEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your account email'**
  String get enterYourAccountEmail;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// No description provided for @enterYourSecurityCode.
  ///
  /// In en, this message translates to:
  /// **'Enter your security code'**
  String get enterYourSecurityCode;

  /// No description provided for @enterYourUserName.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Username'**
  String get enterYourUserName;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @experiences.
  ///
  /// In en, this message translates to:
  /// **'experiences'**
  String get experiences;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @failedToToggleLanguage.
  ///
  /// In en, this message translates to:
  /// **'Failed to toggle language'**
  String get failedToToggleLanguage;

  /// No description provided for @failedToToggleTheme.
  ///
  /// In en, this message translates to:
  /// **'Failed to toggle theme'**
  String get failedToToggleTheme;

  /// No description provided for @feed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feed;

  /// No description provided for @feedIsEmptyDescription.
  ///
  /// In en, this message translates to:
  /// **'Feed is empty now. We will update soon!'**
  String get feedIsEmptyDescription;

  /// No description provided for @fieldCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Field cannot be empty'**
  String get fieldCannotBeEmpty;

  /// No description provided for @fieldOfStudy.
  ///
  /// In en, this message translates to:
  /// **'Field Of Study'**
  String get fieldOfStudy;

  /// No description provided for @findYourFriendProfileNow.
  ///
  /// In en, this message translates to:
  /// **'Find your friend profile now'**
  String get findYourFriendProfileNow;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'FIRST NAME'**
  String get firstName;

  /// No description provided for @firstNameHint.
  ///
  /// In en, this message translates to:
  /// **'Breanna'**
  String get firstNameHint;

  /// No description provided for @flirty.
  ///
  /// In en, this message translates to:
  /// **'Flirty'**
  String get flirty;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @follwer.
  ///
  /// In en, this message translates to:
  /// **'Follower'**
  String get follwer;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgotPassword;

  /// No description provided for @forgotPasswordFailed.
  ///
  /// In en, this message translates to:
  /// **'Forgot password failed'**
  String get forgotPasswordFailed;

  /// No description provided for @forgotYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotYourPassword;

  /// No description provided for @formal.
  ///
  /// In en, this message translates to:
  /// **'Formal'**
  String get formal;

  /// No description provided for @friendly.
  ///
  /// In en, this message translates to:
  /// **'Friendly'**
  String get friendly;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @generateCharacterBotFailed.
  ///
  /// In en, this message translates to:
  /// **'Generate character bot failed'**
  String get generateCharacterBotFailed;

  /// No description provided for @generateCoverLetterFailed.
  ///
  /// In en, this message translates to:
  /// **'Generate cover letter failed'**
  String get generateCoverLetterFailed;

  /// No description provided for @generateFailed.
  ///
  /// In en, this message translates to:
  /// **'Generate failed'**
  String get generateFailed;

  /// No description provided for @generateInterViewQuestionFailed.
  ///
  /// In en, this message translates to:
  /// **'Generate interview question failed'**
  String get generateInterViewQuestionFailed;

  /// No description provided for @generateProfileIntroductionFailed.
  ///
  /// In en, this message translates to:
  /// **'Generate profile introduction failed'**
  String get generateProfileIntroductionFailed;

  /// No description provided for @generateSkillKnowledgeFailed.
  ///
  /// In en, this message translates to:
  /// **'Generate skill knowledge failed'**
  String get generateSkillKnowledgeFailed;

  /// No description provided for @getAutoGenerate.
  ///
  /// In en, this message translates to:
  /// **'Get auto generate history failed'**
  String get getAutoGenerate;

  /// No description provided for @getAutoGenerateHistoryFailed.
  ///
  /// In en, this message translates to:
  /// **'Get auto generate history failed'**
  String get getAutoGenerateHistoryFailed;

  /// No description provided for @getAutoGenerationDetailFailed.
  ///
  /// In en, this message translates to:
  /// **'Get auto generation detail failed'**
  String get getAutoGenerationDetailFailed;

  /// No description provided for @getCertificatesFailed.
  ///
  /// In en, this message translates to:
  /// **'Get certificates failed'**
  String get getCertificatesFailed;

  /// No description provided for @getChatBotDetailFailed.
  ///
  /// In en, this message translates to:
  /// **'Get chat bot detail failed'**
  String get getChatBotDetailFailed;

  /// No description provided for @getDetailsBotFailed.
  ///
  /// In en, this message translates to:
  /// **'get details bot failed'**
  String get getDetailsBotFailed;

  /// No description provided for @getEducationFailed.
  ///
  /// In en, this message translates to:
  /// **'Get educations failed'**
  String get getEducationFailed;

  /// No description provided for @getExperiencesFailed.
  ///
  /// In en, this message translates to:
  /// **'Get experiences failed'**
  String get getExperiencesFailed;

  /// No description provided for @getInfoFailed.
  ///
  /// In en, this message translates to:
  /// **'Get info failed'**
  String get getInfoFailed;

  /// No description provided for @getListCharacterBotFailed.
  ///
  /// In en, this message translates to:
  /// **'Get list character bot failed'**
  String get getListCharacterBotFailed;

  /// No description provided for @getListPopularCharacterBotFailed.
  ///
  /// In en, this message translates to:
  /// **'Get list popular character bot failed'**
  String get getListPopularCharacterBotFailed;

  /// No description provided for @getMetaLanguageFailed.
  ///
  /// In en, this message translates to:
  /// **'Get meta language failed'**
  String get getMetaLanguageFailed;

  /// No description provided for @getNewsFeedFailed.
  ///
  /// In en, this message translates to:
  /// **'Get news feed failed'**
  String get getNewsFeedFailed;

  /// No description provided for @getPointFailed.
  ///
  /// In en, this message translates to:
  /// **'Get point failed'**
  String get getPointFailed;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @getUserBannerFailed.
  ///
  /// In en, this message translates to:
  /// **'get user banner failed'**
  String get getUserBannerFailed;

  /// No description provided for @getUserCertificatesFailed.
  ///
  /// In en, this message translates to:
  /// **'Get user certificates  failed'**
  String get getUserCertificatesFailed;

  /// No description provided for @getUserEducationFailed.
  ///
  /// In en, this message translates to:
  /// **'Get user education  failed'**
  String get getUserEducationFailed;

  /// No description provided for @getUserExperienceFailed.
  ///
  /// In en, this message translates to:
  /// **'Get user experience  failed'**
  String get getUserExperienceFailed;

  /// No description provided for @getUserInfoFailed.
  ///
  /// In en, this message translates to:
  /// **'Get user info failed'**
  String get getUserInfoFailed;

  /// No description provided for @getUserLanguagesFailed.
  ///
  /// In en, this message translates to:
  /// **'Get user languages  failed'**
  String get getUserLanguagesFailed;

  /// No description provided for @getUserPostFailed.
  ///
  /// In en, this message translates to:
  /// **'get user post failed'**
  String get getUserPostFailed;

  /// No description provided for @getUserSkillFailed.
  ///
  /// In en, this message translates to:
  /// **'Get user skill  failed'**
  String get getUserSkillFailed;

  /// No description provided for @hateAndHarassment.
  ///
  /// In en, this message translates to:
  /// **'Hate and harassment'**
  String get hateAndHarassment;

  /// No description provided for @headline.
  ///
  /// In en, this message translates to:
  /// **'Headline'**
  String get headline;

  /// No description provided for @helpful.
  ///
  /// In en, this message translates to:
  /// **'Helpful'**
  String get helpful;

  /// No description provided for @historyDetails.
  ///
  /// In en, this message translates to:
  /// **'History details'**
  String get historyDetails;

  /// No description provided for @historyIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'History is empty'**
  String get historyIsEmpty;

  /// No description provided for @historyUpdateDProfile.
  ///
  /// In en, this message translates to:
  /// **'History update dProfile'**
  String get historyUpdateDProfile;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'/hour'**
  String get hour;

  /// No description provided for @hourAgo.
  ///
  /// In en, this message translates to:
  /// **'hour ago'**
  String get hourAgo;

  /// No description provided for @howManyWordsForThis.
  ///
  /// In en, this message translates to:
  /// **'How many words for this?'**
  String get howManyWordsForThis;

  /// No description provided for @humorous.
  ///
  /// In en, this message translates to:
  /// **'Humorous'**
  String get humorous;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @idCardNumber.
  ///
  /// In en, this message translates to:
  /// **'ID Card Number'**
  String get idCardNumber;

  /// No description provided for @impressEmployerWithYourProfileIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Impress the employer with your profile introduction.'**
  String get impressEmployerWithYourProfileIntroduction;

  /// No description provided for @improveYourSkillWithAITools.
  ///
  /// In en, this message translates to:
  /// **'Improve your skills with AI tools.'**
  String get improveYourSkillWithAITools;

  /// No description provided for @inAngelnvestorRound.
  ///
  /// In en, this message translates to:
  /// **'in angel investor round'**
  String get inAngelnvestorRound;

  /// No description provided for @inspiring.
  ///
  /// In en, this message translates to:
  /// **'Inspiring'**
  String get inspiring;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'INSTAGRAM'**
  String get instagram;

  /// No description provided for @instagramURL.
  ///
  /// In en, this message translates to:
  /// **'Instagram URL'**
  String get instagramURL;

  /// No description provided for @interviewQuestion.
  ///
  /// In en, this message translates to:
  /// **'Interview question'**
  String get interviewQuestion;

  /// No description provided for @interviewQuestionAbout.
  ///
  /// In en, this message translates to:
  /// **'Interview question about'**
  String get interviewQuestionAbout;

  /// No description provided for @investmentOpportunity.
  ///
  /// In en, this message translates to:
  /// **'Investment Opportunity'**
  String get investmentOpportunity;

  /// No description provided for @issuedBy.
  ///
  /// In en, this message translates to:
  /// **'Issued by'**
  String get issuedBy;

  /// No description provided for @jobInterviewQA.
  ///
  /// In en, this message translates to:
  /// **'Job Interview Q&A'**
  String get jobInterviewQA;

  /// No description provided for @jobPosition.
  ///
  /// In en, this message translates to:
  /// **'Job Position'**
  String get jobPosition;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Job title'**
  String get jobTitle;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'LAST NAME'**
  String get lastName;

  /// No description provided for @lastNameHint.
  ///
  /// In en, this message translates to:
  /// **'Schinner'**
  String get lastNameHint;

  /// No description provided for @letOSDetermineAuthMethod.
  ///
  /// In en, this message translates to:
  /// **'Let OS determine authentication method'**
  String get letOSDetermineAuthMethod;

  /// No description provided for @linkedin.
  ///
  /// In en, this message translates to:
  /// **'LINKEDIN'**
  String get linkedin;

  /// No description provided for @linkedinURL.
  ///
  /// In en, this message translates to:
  /// **'Linkedin URL'**
  String get linkedinURL;

  /// No description provided for @loadBotFailed.
  ///
  /// In en, this message translates to:
  /// **'Load bot failed'**
  String get loadBotFailed;

  /// No description provided for @loadFailed.
  ///
  /// In en, this message translates to:
  /// **'Load failed'**
  String get loadFailed;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'location'**
  String get location;

  /// No description provided for @locationHint.
  ///
  /// In en, this message translates to:
  /// **'US'**
  String get locationHint;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed'**
  String get loginFailed;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @max5MbFor1File.
  ///
  /// In en, this message translates to:
  /// **'Max 5Mb for 1 file'**
  String get max5MbFor1File;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @myAiCharacter.
  ///
  /// In en, this message translates to:
  /// **'My AI Character'**
  String get myAiCharacter;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'name'**
  String get name;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @nevermindIGotIt.
  ///
  /// In en, this message translates to:
  /// **'Nevermind, I got it'**
  String get nevermindIGotIt;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @nextButton.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButton;

  /// No description provided for @nfts.
  ///
  /// In en, this message translates to:
  /// **'NFTs'**
  String get nfts;

  /// No description provided for @noCommentsYet.
  ///
  /// In en, this message translates to:
  /// **'No comments yet'**
  String get noCommentsYet;

  /// No description provided for @normal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

  /// No description provided for @nudityAndSexualContent.
  ///
  /// In en, this message translates to:
  /// **'Nudity and sexual content'**
  String get nudityAndSexualContent;

  /// No description provided for @number.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get number;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @openToWork.
  ///
  /// In en, this message translates to:
  /// **'Open to work'**
  String get openToWork;

  /// No description provided for @organization.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get organization;

  /// No description provided for @organizationName.
  ///
  /// In en, this message translates to:
  /// **'Organization name'**
  String get organizationName;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @passive.
  ///
  /// In en, this message translates to:
  /// **'Passive'**
  String get passive;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get passwordCannotBeEmpty;

  /// No description provided for @passwordMustHaveAtLeast8Characters.
  ///
  /// In en, this message translates to:
  /// **'Password must have at least 8 characters'**
  String get passwordMustHaveAtLeast8Characters;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'PAY'**
  String get pay;

  /// No description provided for @payByMonth.
  ///
  /// In en, this message translates to:
  /// **'Pay by month'**
  String get payByMonth;

  /// No description provided for @payPerJob.
  ///
  /// In en, this message translates to:
  /// **'Pay per job'**
  String get payPerJob;

  /// No description provided for @pleaseEnterThe6DigitCodeSentToYourEmailForVerification.
  ///
  /// In en, this message translates to:
  /// **'Please enter the 6-digit code sent to your email for verification'**
  String get pleaseEnterThe6DigitCodeSentToYourEmailForVerification;

  /// No description provided for @position.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get position;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @postFailed.
  ///
  /// In en, this message translates to:
  /// **'post failed'**
  String get postFailed;

  /// No description provided for @posts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get posts;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Policy'**
  String get privacyPolicy;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @profiles.
  ///
  /// In en, this message translates to:
  /// **'Profiles'**
  String get profiles;

  /// No description provided for @prompt.
  ///
  /// In en, this message translates to:
  /// **'Prompt'**
  String get prompt;

  /// No description provided for @receive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get receive;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @requestNewCodeIn.
  ///
  /// In en, this message translates to:
  /// **'Request new code in'**
  String get requestNewCodeIn;

  /// No description provided for @resendAgain.
  ///
  /// In en, this message translates to:
  /// **'Resend Again'**
  String get resendAgain;

  /// No description provided for @resendFailed.
  ///
  /// In en, this message translates to:
  /// **'Resend failed'**
  String get resendFailed;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @resultIsEmptyTryAnotherKeyword.
  ///
  /// In en, this message translates to:
  /// **'Result is empty. Try another keywords!'**
  String get resultIsEmptyTryAnotherKeyword;

  /// No description provided for @salary.
  ///
  /// In en, this message translates to:
  /// **'SALARY'**
  String get salary;

  /// No description provided for @salaryHint.
  ///
  /// In en, this message translates to:
  /// **'\\\$10,000'**
  String get salaryHint;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @school.
  ///
  /// In en, this message translates to:
  /// **'School'**
  String get school;

  /// No description provided for @schoolName.
  ///
  /// In en, this message translates to:
  /// **'School name'**
  String get schoolName;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchFailed.
  ///
  /// In en, this message translates to:
  /// **'Search failed'**
  String get searchFailed;

  /// No description provided for @securityVerification.
  ///
  /// In en, this message translates to:
  /// **'Security verification'**
  String get securityVerification;

  /// No description provided for @selectAReason.
  ///
  /// In en, this message translates to:
  /// **'Select a reason'**
  String get selectAReason;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @sendFailed.
  ///
  /// In en, this message translates to:
  /// **'Send failed'**
  String get sendFailed;

  /// No description provided for @sendToAI.
  ///
  /// In en, this message translates to:
  /// **'Send to AI'**
  String get sendToAI;

  /// No description provided for @sexy.
  ///
  /// In en, this message translates to:
  /// **'Sexy'**
  String get sexy;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signupForFree.
  ///
  /// In en, this message translates to:
  /// **'Sign up for free'**
  String get signupForFree;

  /// No description provided for @skill.
  ///
  /// In en, this message translates to:
  /// **'Skill'**
  String get skill;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @skillsKnowledgeByJobTitle.
  ///
  /// In en, this message translates to:
  /// **'Skills & Knowledge by Job Title'**
  String get skillsKnowledgeByJobTitle;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @smart.
  ///
  /// In en, this message translates to:
  /// **'Smart'**
  String get smart;

  /// No description provided for @socialMedia.
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get socialMedia;

  /// No description provided for @socialMediaWasNotSetUp.
  ///
  /// In en, this message translates to:
  /// **'Social media was not set up'**
  String get socialMediaWasNotSetUp;

  /// No description provided for @someThingAboutYourselfAndYourExperience.
  ///
  /// In en, this message translates to:
  /// **'Some thing about your self and your experience'**
  String get someThingAboutYourselfAndYourExperience;

  /// No description provided for @speaking.
  ///
  /// In en, this message translates to:
  /// **'Speaking'**
  String get speaking;

  /// No description provided for @spiritual.
  ///
  /// In en, this message translates to:
  /// **'Spiritual'**
  String get spiritual;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @suicideAndSelfHarm.
  ///
  /// In en, this message translates to:
  /// **'Suicide and Self-harm'**
  String get suicideAndSelfHarm;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'summary'**
  String get summary;

  /// No description provided for @supportive.
  ///
  /// In en, this message translates to:
  /// **'Supportive'**
  String get supportive;

  /// No description provided for @tellMeAboutYourSelf.
  ///
  /// In en, this message translates to:
  /// **'Tell me about your self?'**
  String get tellMeAboutYourSelf;

  /// No description provided for @tetherUSDT.
  ///
  /// In en, this message translates to:
  /// **'Tether USDT'**
  String get tetherUSDT;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @titleHint.
  ///
  /// In en, this message translates to:
  /// **'Product Designer'**
  String get titleHint;

  /// No description provided for @titleOnboarding1.
  ///
  /// In en, this message translates to:
  /// **'A Web3 social network for jobs'**
  String get titleOnboarding1;

  /// No description provided for @titleOnboarding2.
  ///
  /// In en, this message translates to:
  /// **'AI Tools to help you land your next job'**
  String get titleOnboarding2;

  /// No description provided for @titleOnboarding3.
  ///
  /// In en, this message translates to:
  /// **'Job listing system & New Feeds'**
  String get titleOnboarding3;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @topic.
  ///
  /// In en, this message translates to:
  /// **'Topic'**
  String get topic;

  /// No description provided for @totalBalance.
  ///
  /// In en, this message translates to:
  /// **'Total balance'**
  String get totalBalance;

  /// No description provided for @trainingAI.
  ///
  /// In en, this message translates to:
  /// **'Training AI'**
  String get trainingAI;

  /// No description provided for @tryNow.
  ///
  /// In en, this message translates to:
  /// **'Try now'**
  String get tryNow;

  /// No description provided for @tryToDiscoverDprofileAITools.
  ///
  /// In en, this message translates to:
  /// **'Try to discover DProfile\'s AI tools'**
  String get tryToDiscoverDprofileAITools;

  /// No description provided for @unavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get unavailable;

  /// No description provided for @updateAvatarSuccess.
  ///
  /// In en, this message translates to:
  /// **'Update avatar success'**
  String get updateAvatarSuccess;

  /// No description provided for @updateBannerSuccess.
  ///
  /// In en, this message translates to:
  /// **'Update banner success'**
  String get updateBannerSuccess;

  /// No description provided for @updateBasicInformationFailed.
  ///
  /// In en, this message translates to:
  /// **'Update basic information failed'**
  String get updateBasicInformationFailed;

  /// No description provided for @updateDigitalProfileFailed.
  ///
  /// In en, this message translates to:
  /// **'Update digital profile failed'**
  String get updateDigitalProfileFailed;

  /// No description provided for @updateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get updateFailed;

  /// No description provided for @updatePasswordFailed.
  ///
  /// In en, this message translates to:
  /// **'Update password failed'**
  String get updatePasswordFailed;

  /// No description provided for @updatePropertiesFailed.
  ///
  /// In en, this message translates to:
  /// **'Update properties failed'**
  String get updatePropertiesFailed;

  /// No description provided for @updateUserInfoFailed.
  ///
  /// In en, this message translates to:
  /// **'Update user info  failed'**
  String get updateUserInfoFailed;

  /// No description provided for @updateWalletAddressFailed.
  ///
  /// In en, this message translates to:
  /// **'Update wallet address failed'**
  String get updateWalletAddressFailed;

  /// No description provided for @updateWalletAddressSuccess.
  ///
  /// In en, this message translates to:
  /// **'Update wallet address success'**
  String get updateWalletAddressSuccess;

  /// No description provided for @uploadAvatarFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload avatar failed'**
  String get uploadAvatarFailed;

  /// No description provided for @uploadBannerFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload banner failed'**
  String get uploadBannerFailed;

  /// No description provided for @uploadDocumentToAIKnowledgeDescription.
  ///
  /// In en, this message translates to:
  /// **'Upload your documents to your AI knowledge base'**
  String get uploadDocumentToAIKnowledgeDescription;

  /// No description provided for @uploadImageFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload image failed'**
  String get uploadImageFailed;

  /// No description provided for @uploadSuccess.
  ///
  /// In en, this message translates to:
  /// **'Upload success'**
  String get uploadSuccess;

  /// No description provided for @uploadTextFileDescription.
  ///
  /// In en, this message translates to:
  /// **'You can upload text file .pdf or .docx format about specific knowledge your AI will share with the targeted audience, for example: Menu, best pr articles about your store, history of store..'**
  String get uploadTextFileDescription;

  /// No description provided for @uploadYourFile.
  ///
  /// In en, this message translates to:
  /// **'Upload your file'**
  String get uploadYourFile;

  /// No description provided for @uploadYourImages.
  ///
  /// In en, this message translates to:
  /// **'Upload your images'**
  String get uploadYourImages;

  /// No description provided for @usdt.
  ///
  /// In en, this message translates to:
  /// **'usdt'**
  String get usdt;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get userName;

  /// No description provided for @userNameCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Username cannot be empty'**
  String get userNameCannotBeEmpty;

  /// No description provided for @userNamePasswordIsIncorrect.
  ///
  /// In en, this message translates to:
  /// **'The username or password you entered is incorrect!'**
  String get userNamePasswordIsIncorrect;

  /// No description provided for @validateCodeFailed.
  ///
  /// In en, this message translates to:
  /// **'Validate code failed'**
  String get validateCodeFailed;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// No description provided for @viewChatHistory.
  ///
  /// In en, this message translates to:
  /// **'View Chat History'**
  String get viewChatHistory;

  /// No description provided for @viewDigitalProfile.
  ///
  /// In en, this message translates to:
  /// **'View Digital Profile'**
  String get viewDigitalProfile;

  /// No description provided for @viewHistory.
  ///
  /// In en, this message translates to:
  /// **'View History'**
  String get viewHistory;

  /// No description provided for @violent.
  ///
  /// In en, this message translates to:
  /// **'Violent'**
  String get violent;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'wallet'**
  String get wallet;

  /// No description provided for @weWillHelpYouAnswerInterViewQuestion.
  ///
  /// In en, this message translates to:
  /// **'We will help you answer interview questions.'**
  String get weWillHelpYouAnswerInterViewQuestion;

  /// No description provided for @whatJobAreYouApplingFor.
  ///
  /// In en, this message translates to:
  /// **'What job are you applying for?'**
  String get whatJobAreYouApplingFor;

  /// No description provided for @whatsApp.
  ///
  /// In en, this message translates to:
  /// **'WHATSAPP'**
  String get whatsApp;

  /// No description provided for @whatsAppURL.
  ///
  /// In en, this message translates to:
  /// **'Whatsapp URL'**
  String get whatsAppURL;

  /// No description provided for @whichJobAreYouApplingFor.
  ///
  /// In en, this message translates to:
  /// **'Which job are you applying for'**
  String get whichJobAreYouApplingFor;

  /// No description provided for @writeAComment.
  ///
  /// In en, this message translates to:
  /// **'Write a comment...'**
  String get writeAComment;

  /// No description provided for @writeAgain.
  ///
  /// In en, this message translates to:
  /// **'Write again'**
  String get writeAgain;

  /// No description provided for @writeCoverLetter.
  ///
  /// In en, this message translates to:
  /// **'Write Cover Letter'**
  String get writeCoverLetter;

  /// No description provided for @writeInterviewQuestion.
  ///
  /// In en, this message translates to:
  /// **'Write Interview Question'**
  String get writeInterviewQuestion;

  /// No description provided for @writeProfileIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Write Profile Introduction'**
  String get writeProfileIntroduction;

  /// No description provided for @writeStyle.
  ///
  /// In en, this message translates to:
  /// **'Write Style'**
  String get writeStyle;

  /// No description provided for @writeYourProfileIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Write your profile Introduction'**
  String get writeYourProfileIntroduction;

  /// No description provided for @writeYourSkillContent.
  ///
  /// In en, this message translates to:
  /// **'Write your skill content'**
  String get writeYourSkillContent;

  /// No description provided for @x.
  ///
  /// In en, this message translates to:
  /// **'X'**
  String get x;

  /// No description provided for @xURL.
  ///
  /// In en, this message translates to:
  /// **'X URL'**
  String get xURL;

  /// No description provided for @youDontHaveDigitalProfile.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have digital profile'**
  String get youDontHaveDigitalProfile;

  /// No description provided for @youDontHaveEnoughToken.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough token!'**
  String get youDontHaveEnoughToken;

  /// No description provided for @youHaveAddNewCertificate.
  ///
  /// In en, this message translates to:
  /// **'You have add new certificate'**
  String get youHaveAddNewCertificate;

  /// No description provided for @youHaveAddNewEducation.
  ///
  /// In en, this message translates to:
  /// **'You have add new education'**
  String get youHaveAddNewEducation;

  /// No description provided for @youHaveAddNewExperience.
  ///
  /// In en, this message translates to:
  /// **'You have add new experience'**
  String get youHaveAddNewExperience;

  /// No description provided for @youHaveAddNewLanguage.
  ///
  /// In en, this message translates to:
  /// **'You have add new language'**
  String get youHaveAddNewLanguage;

  /// No description provided for @youHaveAddNewSkill.
  ///
  /// In en, this message translates to:
  /// **'You have add new skill'**
  String get youHaveAddNewSkill;

  /// No description provided for @youHaveToConnectWalletBefore.
  ///
  /// In en, this message translates to:
  /// **'You have to connect wallet before'**
  String get youHaveToConnectWalletBefore;

  /// No description provided for @youSuccessfullySignedUpWelcomeDProfiles.
  ///
  /// In en, this message translates to:
  /// **'You successfully signed up!\nWelcome to dProfiles'**
  String get youSuccessfullySignedUpWelcomeDProfiles;

  /// No description provided for @yourAiCharacters.
  ///
  /// In en, this message translates to:
  /// **'Your AI Characters'**
  String get yourAiCharacters;

  /// No description provided for @yourChooseIsInvalid.
  ///
  /// In en, this message translates to:
  /// **'Your choose is invalid'**
  String get yourChooseIsInvalid;

  /// No description provided for @yourContentHere.
  ///
  /// In en, this message translates to:
  /// **'Your content here'**
  String get yourContentHere;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Your email'**
  String get yourEmail;

  /// No description provided for @yourFieldOfStudy.
  ///
  /// In en, this message translates to:
  /// **'Your field of study'**
  String get yourFieldOfStudy;

  /// No description provided for @yourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Your First Name'**
  String get yourFirstName;

  /// No description provided for @yourIdCard.
  ///
  /// In en, this message translates to:
  /// **'Your id card'**
  String get yourIdCard;

  /// No description provided for @yourJobTitle.
  ///
  /// In en, this message translates to:
  /// **'Your job title'**
  String get yourJobTitle;

  /// No description provided for @yourKeyword.
  ///
  /// In en, this message translates to:
  /// **'Your Keyword'**
  String get yourKeyword;

  /// No description provided for @yourLastName.
  ///
  /// In en, this message translates to:
  /// **'Your Last Name'**
  String get yourLastName;

  /// No description provided for @yourLocation.
  ///
  /// In en, this message translates to:
  /// **'Your Location'**
  String get yourLocation;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get yourName;

  /// No description provided for @yourNationality.
  ///
  /// In en, this message translates to:
  /// **'Your nationality'**
  String get yourNationality;

  /// No description provided for @yourRequire.
  ///
  /// In en, this message translates to:
  /// **'Your require'**
  String get yourRequire;

  /// No description provided for @yourTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Title'**
  String get yourTitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
