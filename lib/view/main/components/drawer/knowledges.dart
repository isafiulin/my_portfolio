import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            LocaleKeys.knowledge,
            style: TextStyle(color: Colors.white),
          ).tr(),
        ),
        const KnowledgeText(knowledge: 'Flutter, Dart'),
        const KnowledgeText(knowledge: 'Networking, Cyber Security'),
        const KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}
