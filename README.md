# tenis_certo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Como usar as variáveis de ambiente
flutter run --dart-define=ENVIRONMENT=STAGING

// somewhere inside your app where you are make HTTP call

final String apiHost = Environment().config.apiHost;
final bool useHttps = Environment().config.useHttps;