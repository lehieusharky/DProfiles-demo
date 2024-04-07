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

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

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

  /// No description provided for @addBasicInformation.
  ///
  /// In en, this message translates to:
  /// **'Add Basic Information'**
  String get addBasicInformation;

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

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get attachment;

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

  /// No description provided for @checkYourEmailOrPasswordAgain.
  ///
  /// In en, this message translates to:
  /// **'Check your email or password again'**
  String get checkYourEmailOrPasswordAgain;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAll;

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

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

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

  /// No description provided for @createYourAiCharacter.
  ///
  /// In en, this message translates to:
  /// **'Create your AI character'**
  String get createYourAiCharacter;

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

  /// No description provided for @flirty.
  ///
  /// In en, this message translates to:
  /// **'Flirty'**
  String get flirty;

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

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @helpful.
  ///
  /// In en, this message translates to:
  /// **'Helpful'**
  String get helpful;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @hourAgo.
  ///
  /// In en, this message translates to:
  /// **'hour ago'**
  String get hourAgo;

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

  /// No description provided for @normal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

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

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

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

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

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

  /// No description provided for @userNameCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Username cannot be empty'**
  String get userNameCannotBeEmpty;

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

  /// No description provided for @yourAiCharacters.
  ///
  /// In en, this message translates to:
  /// **'Your AI Characters'**
  String get yourAiCharacters;

  /// No description provided for @yourFieldOfStudy.
  ///
  /// In en, this message translates to:
  /// **'Your field of study'**
  String get yourFieldOfStudy;

  /// No description provided for @yourIdCard.
  ///
  /// In en, this message translates to:
  /// **'Your id card'**
  String get yourIdCard;

  /// No description provided for @yourLocation.
  ///
  /// In en, this message translates to:
  /// **'Your Location'**
  String get yourLocation;

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
