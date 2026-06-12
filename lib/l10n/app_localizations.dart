import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

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
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Simple WOL'**
  String get appTitle;

  /// No description provided for @homePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Simple WOL'**
  String get homePageTitle;

  /// No description provided for @homePageLabel.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homePageLabel;

  /// No description provided for @settingsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// No description provided for @settingsPageLabel.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageLabel;

  /// No description provided for @aboutPageTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutPageTitle;

  /// No description provided for @aboutPageLabel.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutPageLabel;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @genericWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get genericWarning;

  /// No description provided for @homeSortAlphabetical.
  ///
  /// In en, this message translates to:
  /// **'alphabetical'**
  String get homeSortAlphabetical;

  /// No description provided for @homeSortRecent.
  ///
  /// In en, this message translates to:
  /// **'recently'**
  String get homeSortRecent;

  /// No description provided for @homeSortType.
  ///
  /// In en, this message translates to:
  /// **'type'**
  String get homeSortType;

  /// No description provided for @homeAddDeviceButton.
  ///
  /// In en, this message translates to:
  /// **'Add Devices'**
  String get homeAddDeviceButton;

  /// No description provided for @homeNoDevices.
  ///
  /// In en, this message translates to:
  /// **'No devices yet. Add devices by clicking the + button below'**
  String get homeNoDevices;

  /// No description provided for @homeFilterDevicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter Devices'**
  String get homeFilterDevicesTitle;

  /// No description provided for @homeDeviceListTitle.
  ///
  /// In en, this message translates to:
  /// **'Devices'**
  String get homeDeviceListTitle;

  /// No description provided for @homeEditDeviceAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Device'**
  String get homeEditDeviceAlertTitle;

  /// No description provided for @homeDeviceCardWakeButton.
  ///
  /// In en, this message translates to:
  /// **'Wake Up'**
  String get homeDeviceCardWakeButton;

  /// No description provided for @homeDeviceCardEditButton.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get homeDeviceCardEditButton;

  /// No description provided for @homeDeviceCardOnline.
  ///
  /// In en, this message translates to:
  /// **'Device is online'**
  String get homeDeviceCardOnline;

  /// No description provided for @homeDeviceCardOffline.
  ///
  /// In en, this message translates to:
  /// **'Device is offline'**
  String get homeDeviceCardOffline;

  /// No description provided for @homeWolCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Waking up...'**
  String get homeWolCardTitle;

  /// No description provided for @homeWolCardIp.
  ///
  /// In en, this message translates to:
  /// **'\'{ip}\' is an invalid IPv4 address'**
  String homeWolCardIp(String ip);

  /// No description provided for @homeWolCardMac.
  ///
  /// In en, this message translates to:
  /// **'\'{mac}\' is an invalid MAC address'**
  String homeWolCardMac(String mac);

  /// No description provided for @homeWolCardPort.
  ///
  /// In en, this message translates to:
  /// **'\'{port}\' is an invalid port'**
  String homeWolCardPort(String port);

  /// No description provided for @homeWolCardInvalid.
  ///
  /// In en, this message translates to:
  /// **'There was an error trying to send a WOL Package'**
  String get homeWolCardInvalid;

  /// No description provided for @homeWolCardValid.
  ///
  /// In en, this message translates to:
  /// **'Provided device details are valid'**
  String get homeWolCardValid;

  /// No description provided for @homeWolCardSendWol.
  ///
  /// In en, this message translates to:
  /// **'Trying to send WOL Packages'**
  String get homeWolCardSendWol;

  /// No description provided for @homeWolCardSendWolSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successfully send WOL packages to {ip}'**
  String homeWolCardSendWolSuccess(String ip);

  /// No description provided for @homeWolCardSendWolFail.
  ///
  /// In en, this message translates to:
  /// **'There was an error when trying to send WOL Packages to the host {ip}'**
  String homeWolCardSendWolFail(String ip);

  /// No description provided for @homeWolCardPingInfo.
  ///
  /// In en, this message translates to:
  /// **'Trying to ping device until it is online...'**
  String get homeWolCardPingInfo;

  /// No description provided for @homeWolCardPing.
  ///
  /// In en, this message translates to:
  /// **'Sending ping #{count}'**
  String homeWolCardPing(int count);

  /// No description provided for @homeWolCardPingSuccess.
  ///
  /// In en, this message translates to:
  /// **'Device is online'**
  String get homeWolCardPingSuccess;

  /// No description provided for @homeWolCardPingFail.
  ///
  /// In en, this message translates to:
  /// **'Device is still offline'**
  String get homeWolCardPingFail;

  /// No description provided for @discoverTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover Devices'**
  String get discoverTitle;

  /// No description provided for @discoverCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Network Scan'**
  String get discoverCardTitle;

  /// No description provided for @discoverCardSubnet.
  ///
  /// In en, this message translates to:
  /// **'Subnet:'**
  String get discoverCardSubnet;

  /// No description provided for @discoverCardSubnetNoNetwork.
  ///
  /// In en, this message translates to:
  /// **'no network found'**
  String get discoverCardSubnetNoNetwork;

  /// No description provided for @discoverAddCustomAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Custom Device'**
  String get discoverAddCustomAlertTitle;

  /// No description provided for @discoverAddDeviceAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Add New Device'**
  String get discoverAddDeviceAlertTitle;

  /// No description provided for @discoverAddCustomDeviceButton.
  ///
  /// In en, this message translates to:
  /// **'Add Custom'**
  String get discoverAddCustomDeviceButton;

  /// No description provided for @discoverAddCustomDeviceCard.
  ///
  /// In en, this message translates to:
  /// **'Custom Configuration'**
  String get discoverAddCustomDeviceCard;

  /// No description provided for @discoverNetworkDevicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Network Devices'**
  String get discoverNetworkDevicesTitle;

  /// No description provided for @saveWithError.
  ///
  /// In en, this message translates to:
  /// **'Save Anyways'**
  String get saveWithError;

  /// No description provided for @formApplyButtonText.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get formApplyButtonText;

  /// No description provided for @formNameHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get formNameHint;

  /// No description provided for @formNameError.
  ///
  /// In en, this message translates to:
  /// **'name should not be empty'**
  String get formNameError;

  /// No description provided for @formIpHint.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get formIpHint;

  /// No description provided for @formIpError.
  ///
  /// In en, this message translates to:
  /// **'invalid IP Address'**
  String get formIpError;

  /// No description provided for @formMacHint.
  ///
  /// In en, this message translates to:
  /// **'MAC Address'**
  String get formMacHint;

  /// No description provided for @formMacError.
  ///
  /// In en, this message translates to:
  /// **'invalid MAC Address'**
  String get formMacError;

  /// No description provided for @formPortLabel.
  ///
  /// In en, this message translates to:
  /// **'Wake On Lan Port'**
  String get formPortLabel;

  /// No description provided for @formPortHint.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get formPortHint;

  /// No description provided for @formPortError.
  ///
  /// In en, this message translates to:
  /// **'invalid'**
  String get formPortError;

  /// No description provided for @formIconLabel.
  ///
  /// In en, this message translates to:
  /// **'Icon'**
  String get formIconLabel;

  /// No description provided for @formIconError.
  ///
  /// In en, this message translates to:
  /// **'no device type selected'**
  String get formIconError;

  /// No description provided for @formIconErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Wrong Format'**
  String get formIconErrorTitle;

  /// No description provided for @formPort.
  ///
  /// In en, this message translates to:
  /// **'Port {port}'**
  String formPort(int port);

  /// No description provided for @formErrorMessageName.
  ///
  /// In en, this message translates to:
  /// **'device has no name'**
  String get formErrorMessageName;

  /// No description provided for @formErrorMessageIp.
  ///
  /// In en, this message translates to:
  /// **'invalid IP Address'**
  String get formErrorMessageIp;

  /// No description provided for @formErrorMessageMac.
  ///
  /// In en, this message translates to:
  /// **'invalid MAC Address'**
  String get formErrorMessageMac;

  /// No description provided for @formErrorMessagePort.
  ///
  /// In en, this message translates to:
  /// **'invalid port'**
  String get formErrorMessagePort;

  /// No description provided for @formErrorMessageType.
  ///
  /// In en, this message translates to:
  /// **'no device type selected'**
  String get formErrorMessageType;

  /// No description provided for @formDeleteAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Device'**
  String get formDeleteAlertTitle;

  /// After the text, the device name is inserted in bold text followed by a question mark.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the device'**
  String get formDeleteAlertText;

  /// No description provided for @formDeleteAlertDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get formDeleteAlertDelete;

  /// No description provided for @deviceChoiceServer.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get deviceChoiceServer;

  /// No description provided for @deviceChoiceDesktop.
  ///
  /// In en, this message translates to:
  /// **'Desktop'**
  String get deviceChoiceDesktop;

  /// No description provided for @deviceChoiceLaptop.
  ///
  /// In en, this message translates to:
  /// **'Laptop'**
  String get deviceChoiceLaptop;

  /// No description provided for @deviceChoicePrinter.
  ///
  /// In en, this message translates to:
  /// **'Printer'**
  String get deviceChoicePrinter;

  /// No description provided for @deviceChoiceNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get deviceChoiceNetwork;

  /// No description provided for @deviceChoiceIOT.
  ///
  /// In en, this message translates to:
  /// **'Smart Device'**
  String get deviceChoiceIOT;

  /// No description provided for @deviceChoiceTv.
  ///
  /// In en, this message translates to:
  /// **'TV'**
  String get deviceChoiceTv;

  /// No description provided for @deviceChoiceMobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get deviceChoiceMobile;

  /// No description provided for @deviceChoiceOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get deviceChoiceOther;

  /// No description provided for @settingsAppearanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearanceTitle;

  /// No description provided for @settingsThemeSelectorTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsThemeSelectorTitle;

  /// No description provided for @settingsThemeSelectorLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeSelectorLight;

  /// No description provided for @settingsThemeSelectorDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeSelectorDark;

  /// No description provided for @settingsThemeSelectorSystem.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get settingsThemeSelectorSystem;

  /// No description provided for @settingsSystemColorsText.
  ///
  /// In en, this message translates to:
  /// **'Use system colors'**
  String get settingsSystemColorsText;

  /// No description provided for @settingsAppDataTitle.
  ///
  /// In en, this message translates to:
  /// **'App Data'**
  String get settingsAppDataTitle;

  /// No description provided for @settingsExport.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get settingsExport;

  /// No description provided for @settingsImport.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get settingsImport;

  /// No description provided for @settingsReset.
  ///
  /// In en, this message translates to:
  /// **'Reset App Data'**
  String get settingsReset;

  /// No description provided for @settingsResetDialogText.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset all saved devices? It is recommended to export your data before doing this.'**
  String get settingsResetDialogText;

  /// No description provided for @settingsResetDialogButton.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get settingsResetDialogButton;

  /// No description provided for @settingsResetDialogWrongFormatTitle.
  ///
  /// In en, this message translates to:
  /// **'Wrong File Format'**
  String get settingsResetDialogWrongFormatTitle;

  /// The message shown when the user tries to import a file with a wrong file extension. The file extension is provided as {fileExt}.
  ///
  /// In en, this message translates to:
  /// **'Only .json files are supported for importing devices. You provided a file ending with .{fileExt} which is not supported.'**
  String settingsResetDialogWrongFormatText(String fileExt);

  /// No description provided for @settingsResetDialogWrongJsonFormatTitle.
  ///
  /// In en, this message translates to:
  /// **'Wrong Json format'**
  String get settingsResetDialogWrongJsonFormatTitle;

  /// No description provided for @settingsResetDialogWrongJsonFormatText.
  ///
  /// In en, this message translates to:
  /// **'The file you provided is not in the correct format. Please make sure it is a json file which got exported by this app before.'**
  String get settingsResetDialogWrongJsonFormatText;

  /// No description provided for @settingsResetDialogConfirmText.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to import these devices? This will delete all current data and replace it with the devices in the file.'**
  String get settingsResetDialogConfirmText;

  /// No description provided for @settingsResetDialogConfirmButton.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get settingsResetDialogConfirmButton;

  /// No description provided for @aboutDevice.
  ///
  /// In en, this message translates to:
  /// **'Device Info'**
  String get aboutDevice;

  /// No description provided for @aboutInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'About this App'**
  String get aboutInfoTitle;

  /// No description provided for @aboutInfoText.
  ///
  /// In en, this message translates to:
  /// **'A simple tool to wake devices in the local network remotely if they are turned off. This app tries to make this process easy for the user. but with diffrent icon '**
  String get aboutInfoText;

  /// No description provided for @aboutOpenSourceTitle.
  ///
  /// In en, this message translates to:
  /// **'Open Source'**
  String get aboutOpenSourceTitle;

  /// No description provided for @aboutOpenSourceCodeButton.
  ///
  /// In en, this message translates to:
  /// **'Source Code'**
  String get aboutOpenSourceCodeButton;

  /// No description provided for @aboutOpenSourceLicenseButton.
  ///
  /// In en, this message translates to:
  /// **'Licenses'**
  String get aboutOpenSourceLicenseButton;

  /// No description provided for @aboutVersionText.
  ///
  /// In en, this message translates to:
  /// **'Version: {version} ({buildNumber})'**
  String aboutVersionText(String version, String buildNumber);

  /// No description provided for @aboutWebPlatformError.
  ///
  /// In en, this message translates to:
  /// **'Web platform isn\'t supported'**
  String get aboutWebPlatformError;

  /// No description provided for @aboutFuchsiaPlatformError.
  ///
  /// In en, this message translates to:
  /// **'Fuchsia platform isn\'t supported'**
  String get aboutFuchsiaPlatformError;

  /// No description provided for @aboutLinuxPlatformError.
  ///
  /// In en, this message translates to:
  /// **'Linux platform isn\'t supported'**
  String get aboutLinuxPlatformError;

  /// No description provided for @aboutMacOSPlatformError.
  ///
  /// In en, this message translates to:
  /// **'macOS platform isn\'t supported'**
  String get aboutMacOSPlatformError;

  /// No description provided for @aboutWindowsPlatformError.
  ///
  /// In en, this message translates to:
  /// **'Windows platform isn\'t supported'**
  String get aboutWindowsPlatformError;

  /// No description provided for @aboutNoPlatformDetected.
  ///
  /// In en, this message translates to:
  /// **'Failed to get platform version'**
  String get aboutNoPlatformDetected;
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
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
