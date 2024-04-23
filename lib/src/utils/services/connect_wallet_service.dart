import 'package:flutter/material.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';

class AppConnectWalletService {
  W3MService? _w3mService;

  AppConnectWalletService._internal() {
    setUpW3mService();
  }

  static final AppConnectWalletService _instance =
      AppConnectWalletService._internal();

  factory AppConnectWalletService() => _instance;

  W3MService get w3mService => _w3mService!;

  void setUpW3mService() {
    if (_w3mService == null) {
      _w3mService = W3MService(
        projectId: 'c215a8fed9aa9f594f5d0c08fd511641',
        metadata: const PairingMetadata(
          name: 'dProfiles App',
          description: "Let's connect with dProfiles",
          url: 'https://www.dprofiles.xyz/',
          icons: [
            'https://www.dprofiles.xyz/_next/static/media/logo.e5ce3f74.svg'
          ],
          redirect: Redirect(
            native: 'https://www.dprofiles.xyz',
            universal: 'https://www.dprofiles.xyz',
          ),
        ),
      );
      _w3mService?.init();
    }
  }

  String? get walletAddress => _w3mService!.session?.address;

  String get statusWalletConnection =>
      _w3mService!.isConnected ? 'Connected' : 'Disconnected';

  void connectWallet(
    BuildContext context,
    void Function(String walletAddress) onConnected,
  ) {
    _w3mService!.addListener(() {
      if (_w3mService!.isConnected) {
        onConnected(_w3mService!.session?.address ?? '');
      }
    });

    _w3mService!.openModal(context);
  }

  void disconnectWallet(
    BuildContext context,
    void Function() onConnected,
  ) {
    _w3mService!.disconnect().then((value) => onConnected());
  }
}
