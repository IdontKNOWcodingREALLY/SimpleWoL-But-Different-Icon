import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_wake_on_lan/gen/l10n/app_localizations.dart';
import '../../constants.dart';
import '../../widgets/layout_elements.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key, required this.title, required this.packageInfo});

  final PackageInfo packageInfo;
  final String title;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final Uri _url = Uri.parse(AppConstants.sourceCodeLink);

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      log('Could not launch $url');
    }
  }

  String? _wifiAddress;

  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    initWifiAddress();
  }

Future<void> initPlatformState() async {
    var deviceData = <String, dynamic>{};

    // Grab all translations before any async gaps!
    final errorWeb = AppLocalizations.of(context)!.aboutWebPlatformError;
    final errorFuchsia = AppLocalizations.of(context)!.aboutFuchsiaPlatformError;
    final errorLinux = AppLocalizations.of(context)!.aboutLinuxPlatformError;
    final errorMac = AppLocalizations.of(context)!.aboutMacOSPlatformError;
    final errorWindows = AppLocalizations.of(context)!.aboutWindowsPlatformError;
    final errorNoPlatform = AppLocalizations.of(context)!.aboutNoPlatformDetected;

    try {
      if (kIsWeb) {
        deviceData = <String, dynamic>{'Error:': errorWeb};
      } else {
        switch (defaultTargetPlatform) {
          case TargetPlatform.android:
            final build = await deviceInfoPlugin.androidInfo;
            deviceData = _readAndroidBuildData(build);
            break;
          case TargetPlatform.iOS:
            final data = await deviceInfoPlugin.iosInfo;
            deviceData = _readIosDeviceInfo(data);
            break;
          case TargetPlatform.fuchsia:
            deviceData = <String, dynamic>{'Error:': errorFuchsia};
            break;
          case TargetPlatform.linux:
            deviceData = <String, dynamic>{'Error:': errorLinux};
            break;
          case TargetPlatform.macOS:
            deviceData = <String, dynamic>{'Error:': errorMac};
            break;
          case TargetPlatform.windows:
            deviceData = <String, dynamic>{'Error:': errorWindows};
            break;
        }
      }
    } on PlatformException {
      deviceData = <String, dynamic>{'Error:': errorNoPlatform};
    }

    if (!mounted) return;
    setState(() {
      _deviceData = deviceData;
    });
  }

  Future<void> initWifiAddress() async {
    String? wifiAddress = await NetworkInfo().getWifiIP();

    if (!mounted) return;

    setState(() {
      _wifiAddress = wifiAddress;
    });
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'model': build.model,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'utsname.nodename': data.utsname.nodename,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: AppConstants.screenPadding,
        children: [
          TextTitle(
            title: AppLocalizations.of(context)!.aboutInfoTitle,
            children: [
              TextBox(text: AppLocalizations.of(context)!.aboutInfoText),
            ],
          ),
          TextTitle(
            title: AppLocalizations.of(context)!.aboutDevice,
            children: [
              getDeviceInfoCard(),
            ],
          ),
          TextTitle(
            title: AppLocalizations.of(context)!.aboutOpenSourceTitle,
            children: [
              SpacedRow(
                children: [
                  IconTextButton(
                    text:
                        AppLocalizations.of(context)!.aboutOpenSourceCodeButton,
                    icon: AppConstants.sourceCodeIcon,
                    onPressed: () async {
                      await _launchUrl(_url);
                    },
                  ),
                  IconTextButton(
                    text: AppLocalizations.of(context)!
                        .aboutOpenSourceLicenseButton,
                    icon: AppConstants.licenseIcon,
                    onPressed: () => {showLicensePage(context: context)},
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              VersionText(text: widget.packageInfo.appName),
              VersionText(text: widget.packageInfo.packageName),
              VersionText(
                  text: AppLocalizations.of(context)!.aboutVersionText(
                      widget.packageInfo.version,
                      widget.packageInfo.buildNumber)),
            ],
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  /// return card with device info
  Widget getDeviceInfoCard() {
    return Card(
        elevation: 0,
        color:
            Theme.of(context).colorScheme.secondaryContainer, //primaryContainer
        child: InkWell(
            borderRadius: AppConstants.borderRadius,
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _deviceData.keys.map((String property) {
                  return Text(_deviceData[property].toString());
                }).toList(),
              ),
              subtitle: Text(
                "${AppConstants.ipText}: $_wifiAddress",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              minLeadingWidth: 0,
              // ignore: sized_box_for_whitespace
              leading: const SizedBox(
                height: double.infinity,
                child: Icon(
                  Icons.phone_iphone,
                ),
              ),
            )));
  }
}

/// return text with Version styling
class VersionText extends StatelessWidget {
  const VersionText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }
}
