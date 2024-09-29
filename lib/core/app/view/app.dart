
part of '../app.dart';

class _ArchExampleApp extends HookConsumerWidget {
  const _ArchExampleApp();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Listener(
      onPointerDown: (_) {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp.router(
        routerDelegate: ref.read(routerProvider).delegate(),
        routeInformationParser: ref.read(routerProvider).defaultRouteParser(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}