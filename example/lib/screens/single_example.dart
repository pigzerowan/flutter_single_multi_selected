/**
 * @Title:
 * @Package
 * @Description: (用一句话描述该文件做什么)
 * @author zyw
 * @date
 */

import 'package:flutter/material.dart';
import 'package:single_multi_selected/single_multi_selected.dart';

class CommonSingleItem extends StatefulWidget {
  CommonSingleItem({
    Key? key,
  }) : super(key: key);

  @override
  CommonSingleItemState createState() => CommonSingleItemState();
}

class CommonSingleItemState extends State<CommonSingleItem> {
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);

  List<MultiSelectCard<String>> itemlist = [
    MultiSelectCard(value: '10', label: 'Dart'),
    MultiSelectCard(value: '11', label: 'Python'),
    MultiSelectCard(
      value: '12',
      label: 'JavaScript',
    ),
    MultiSelectCard(value: '1', label: 'Java', selected: true),
    MultiSelectCard(value: '2', label: 'xxxxxxxx'),
    MultiSelectCard(value: '3', label: 'C++'),
    MultiSelectCard(value: '4', label: 'Java'),
    MultiSelectCard(value: '5', label: 'C#'),
    MultiSelectCard(value: '6', label: 'xxxxxxxx'),
    MultiSelectCard(value: '7', label: 'C++'),
    MultiSelectCard(value: '8', label: 'Java'),
    MultiSelectCard(value: '9', label: 'C#'),
  ];

  @override
  Widget build(BuildContext context) {
    // final _counter = Get.put(CommonDecorationItem());

    return MultiSelectContainer(
      // maxSelectableCount: 1,
      wrapSettings: const WrapSettings(
        alignment: WrapAlignment.start,
        runSpacing: 15,
      ),
      itemsDecoration: MultiSelectDecorations(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.all(color: Colors.green, width: 1)),
        selectedDecoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
        disabledDecoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.grey[500]!),
            borderRadius: BorderRadius.circular(10)),
      ),
      textStyles: const MultiSelectTextStyles(
          textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: "Exo2",
              fontStyle: FontStyle.normal,
              fontSize: 13.0),
          selectedTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontFamily: "Exo2",
              fontStyle: FontStyle.normal,
              fontSize: 13.0)),
      controller: _controller,
      items: itemlist,
      onChange: (allSelectedItems, selectedItem) {
        setState(() {
          if (allSelectedItems.length == 0) {
          } else {
            _controller.selectSome(selectedItem.toString());
          }
        });
      },
    );
  }
}
