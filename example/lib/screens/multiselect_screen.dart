import 'package:single_multi_selected_example/screens/single_example.dart';
import 'package:single_multi_selected_example/screens/widget_with_change.dart';
import 'package:single_multi_selected_example/themedata/textstyles.dart';

import 'package:flutter/material.dart';
import 'package:single_multi_selected_example/widgets/examples.dart';
import 'package:single_multi_selected_example/widgets/multiselect_features/minimumsetup_example.dart';

class SimpleMultiSelectSceen extends StatelessWidget {
  const SimpleMultiSelectSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 40,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Simple Examples'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Minimum Setup',
                style: titleTS,
              ),
              const Text('Select SINGLE Favorite programming languages'),
              const SizedBox(
                height: 10,
              ),
              CommonSingleItem(),
              divider,
              const Text('Select Favorite programming languages'),
              const SizedBox(
                height: 10,
              ),
              const MinimumSetupExample(),
              divider,
              const Text(
                'Limited choices',
                style: titleTS,
              ),
              const Text('Select only 5 programming languages'),
              const SizedBox(
                height: 10,
              ),
              const LimitedChoicesExample(),
              divider,
              const Text(
                'Icons',
                style: titleTS,
              ),
              const Text('Prefix'),
              const SizedBox(
                height: 10,
              ),
              const PrefixExample(),
              const Divider(),
              const Text('Suffix'),
              const SizedBox(
                height: 10,
              ),
              const SuffixExample(),
              divider,
              const Text(
                'Decorations',
                style: titleTS,
              ),
              const Text('Common decorations'),
              const SizedBox(
                height: 10,
              ),
              const CommonDecorationExample(),
              const Divider(),
              const Text('Unique decorations for each Items'),
              const SizedBox(
                height: 10,
              ),
              const UniqueDecorationsExample(),
              divider,
              const Text(
                'Text Styles',
                style: titleTS,
              ),
              const Text('Common Text Styles'),
              const SizedBox(
                height: 10,
              ),
              const CommonTextStyleExample(),
              const Divider(),
              const Text('Unique Text Style for each items'),
              const SizedBox(
                height: 10,
              ),
              const UniqueTextStylesExample(),
              divider,
              const Text(
                'Status',
                style: titleTS,
              ),
              const Text('Enabled / Disabled / Selected / perpetual Selected'),
              const SizedBox(
                height: 10,
              ),
              const StatusExample(),
              divider,
              const Text(
                'Controller',
                style: titleTS,
              ),
              ControllerExample(),
              divider,
              const Text(
                'Wrapper settings',
                style: titleTS,
              ),
              const SizedBox(
                height: 10,
              ),
              const WrapperSettingsExample(),
              divider,
              const Text(
                'Any widget',
                style: titleTS,
              ),
              const SizedBox(
                height: 10,
              ),
              const AnyWidgetExample(),
              const Text(
                'Any widget can change',
                style: titleTS,
              ),
              const SizedBox(
                height: 10,
              ),
              CommonIconItem(),
            ],
          ),
        ),
      ),
    );
  }
}
