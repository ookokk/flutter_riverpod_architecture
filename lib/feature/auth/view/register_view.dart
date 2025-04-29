import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pick_champ/core/const/extensions/context_extension.dart';

@RoutePage()
class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fullNameCnt = TextEditingController();
    final emailCnt = TextEditingController();
    final pwCnt = TextEditingController();
    return Scaffold(
      backgroundColor: context.themeData.scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      // ignore: deprecated_member_use
      body: Stack(children: []),
    );
  }
}
