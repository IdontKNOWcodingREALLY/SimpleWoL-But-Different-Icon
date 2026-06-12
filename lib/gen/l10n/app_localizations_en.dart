// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Simple WOL';

  @override
  String get homePageTitle => 'Simple WOL';

  @override
  String get homePageLabel => 'Home';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get settingsPageLabel => 'Settings';

  @override
  String get aboutPageTitle => 'About';

  @override
  String get aboutPageLabel => 'About';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get done => 'Done';

  @override
  String get ok => 'OK';

  @override
  String get back => 'Back';

  @override
  String get genericWarning => 'Warning';

  @override
  String get homeSortAlphabetical => 'alphabetical';

  @override
  String get homeSortRecent => 'recently';

  @override
  String get homeSortType => 'type';

  @override
  String get homeAddDeviceButton => 'Add Devices';

  @override
  String get homeNoDevices =>
      'No devices yet. Add devices by clicking the + button below';

  @override
  String get homeFilterDevicesTitle => 'Filter Devices';

  @override
  String get homeDeviceListTitle => 'Devices';

  @override
  String get homeEditDeviceAlertTitle => 'Edit Device';

  @override
  String get homeDeviceCardWakeButton => 'Wake Up';

  @override
  String get homeDeviceCardEditButton => 'Edit';

  @override
  String get homeDeviceCardOnline => 'Device is online';

  @override
  String get homeDeviceCardOffline => 'Device is offline';

  @override
  String get homeWolCardTitle => 'Waking up...';

  @override
  String homeWolCardIp(String ip) {
    return '\'$ip\' is an invalid IPv4 address';
  }

  @override
  String homeWolCardMac(String mac) {
    return '\'$mac\' is an invalid MAC address';
  }

  @override
  String homeWolCardPort(String port) {
    return '\'$port\' is an invalid port';
  }

  @override
  String get homeWolCardInvalid =>
      'There was an error trying to send a WOL Package';

  @override
  String get homeWolCardValid => 'Provided device details are valid';

  @override
  String get homeWolCardSendWol => 'Trying to send WOL Packages';

  @override
  String homeWolCardSendWolSuccess(String ip) {
    return 'Successfully send WOL packages to $ip';
  }

  @override
  String homeWolCardSendWolFail(String ip) {
    return 'There was an error when trying to send WOL Packages to the host $ip';
  }

  @override
  String get homeWolCardPingInfo =>
      'Trying to ping device until it is online...';

  @override
  String homeWolCardPing(int count) {
    return 'Sending ping #$count';
  }

  @override
  String get homeWolCardPingSuccess => 'Device is online';

  @override
  String get homeWolCardPingFail => 'Device is still offline';

  @override
  String get discoverTitle => 'Discover Devices';

  @override
  String get discoverCardTitle => 'Network Scan';

  @override
  String get discoverCardSubnet => 'Subnet:';

  @override
  String get discoverCardSubnetNoNetwork => 'no network found';

  @override
  String get discoverAddCustomAlertTitle => 'Add Custom Device';

  @override
  String get discoverAddDeviceAlertTitle => 'Add New Device';

  @override
  String get discoverAddCustomDeviceButton => 'Add Custom';

  @override
  String get discoverAddCustomDeviceCard => 'Custom Configuration';

  @override
  String get discoverNetworkDevicesTitle => 'Network Devices';

  @override
  String get saveWithError => 'Save Anyways';

  @override
  String get formApplyButtonText => 'Apply';

  @override
  String get formNameHint => 'Name';

  @override
  String get formNameError => 'name should not be empty';

  @override
  String get formIpHint => 'IP Address';

  @override
  String get formIpError => 'invalid IP Address';

  @override
  String get formMacHint => 'MAC Address';

  @override
  String get formMacError => 'invalid MAC Address';

  @override
  String get formPortLabel => 'Wake On Lan Port';

  @override
  String get formPortHint => 'Port';

  @override
  String get formPortError => 'invalid';

  @override
  String get formIconLabel => 'Icon';

  @override
  String get formIconError => 'no device type selected';

  @override
  String get formIconErrorTitle => 'Wrong Format';

  @override
  String formPort(int port) {
    return 'Port $port';
  }

  @override
  String get formErrorMessageName => 'device has no name';

  @override
  String get formErrorMessageIp => 'invalid IP Address';

  @override
  String get formErrorMessageMac => 'invalid MAC Address';

  @override
  String get formErrorMessagePort => 'invalid port';

  @override
  String get formErrorMessageType => 'no device type selected';

  @override
  String get formDeleteAlertTitle => 'Delete Device';

  @override
  String get formDeleteAlertText =>
      'Are you sure you want to delete the device';

  @override
  String get formDeleteAlertDelete => 'Delete';

  @override
  String get deviceChoiceServer => 'Server';

  @override
  String get deviceChoiceDesktop => 'Desktop';

  @override
  String get deviceChoiceLaptop => 'Laptop';

  @override
  String get deviceChoicePrinter => 'Printer';

  @override
  String get deviceChoiceNetwork => 'Network';

  @override
  String get deviceChoiceIOT => 'Smart Device';

  @override
  String get deviceChoiceTv => 'TV';

  @override
  String get deviceChoiceMobile => 'Mobile';

  @override
  String get deviceChoiceOther => 'Other';

  @override
  String get settingsAppearanceTitle => 'Appearance';

  @override
  String get settingsThemeSelectorTitle => 'Theme';

  @override
  String get settingsThemeSelectorLight => 'Light';

  @override
  String get settingsThemeSelectorDark => 'Dark';

  @override
  String get settingsThemeSelectorSystem => 'Auto';

  @override
  String get settingsSystemColorsText => 'Use system colors';

  @override
  String get settingsAppDataTitle => 'App Data';

  @override
  String get settingsExport => 'Export';

  @override
  String get settingsImport => 'Import';

  @override
  String get settingsReset => 'Reset App Data';

  @override
  String get settingsResetDialogText =>
      'Are you sure you want to reset all saved devices? It is recommended to export your data before doing this.';

  @override
  String get settingsResetDialogButton => 'Reset';

  @override
  String get settingsResetDialogWrongFormatTitle => 'Wrong File Format';

  @override
  String settingsResetDialogWrongFormatText(String fileExt) {
    return 'Only .json files are supported for importing devices. You provided a file ending with .$fileExt which is not supported.';
  }

  @override
  String get settingsResetDialogWrongJsonFormatTitle => 'Wrong Json format';

  @override
  String get settingsResetDialogWrongJsonFormatText =>
      'The file you provided is not in the correct format. Please make sure it is a json file which got exported by this app before.';

  @override
  String get settingsResetDialogConfirmText =>
      'Are you sure you want to import these devices? This will delete all current data and replace it with the devices in the file.';

  @override
  String get settingsResetDialogConfirmButton => 'Import';

  @override
  String get aboutDevice => 'Device Info';

  @override
  String get aboutInfoTitle => 'About this App';

  @override
  String get aboutInfoText =>
      'A simple tool to wake devices in the local network remotely if they are turned off. This app tries to make this process easy for the user. but with diffrent icon ';

  @override
  String get aboutOpenSourceTitle => 'Open Source';

  @override
  String get aboutOpenSourceCodeButton => 'Source Code';

  @override
  String get aboutOpenSourceLicenseButton => 'Licenses';

  @override
  String aboutVersionText(String version, String buildNumber) {
    return 'Version: $version ($buildNumber)';
  }

  @override
  String get aboutWebPlatformError => 'Web platform isn\'t supported';

  @override
  String get aboutFuchsiaPlatformError => 'Fuchsia platform isn\'t supported';

  @override
  String get aboutLinuxPlatformError => 'Linux platform isn\'t supported';

  @override
  String get aboutMacOSPlatformError => 'macOS platform isn\'t supported';

  @override
  String get aboutWindowsPlatformError => 'Windows platform isn\'t supported';

  @override
  String get aboutNoPlatformDetected => 'Failed to get platform version';
}
