/**
 * @Title:
 * @Package
 * @Description: (用一句话描述该文件做什么)
 * @author zyw
 * @date
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:single_multi_selected/single_multi_selected.dart';

class CommonIconItem extends StatefulWidget {
  // List<AllergensVos> menusData = [];

  // CommonIconItem({Key? key, required this.menusData}) : super(key: key);
  CommonIconItem({Key? key}) : super(key: key);

  @override
  // CommonIconItemState createState() => CommonIconItemState(this.menusData);
  CommonIconItemState createState() => CommonIconItemState();
}

class CommonIconItemState extends State<CommonIconItem> {
  // List<AllergensVos> menusData;
  // CommonIconItemState(this.menusData);
  var _switchValue = false;
  bool ifseleted = true;
  final MultiSelectController<String> _controller =
      MultiSelectController(deSelectPerpetualSelectedItems: true);
  List<MultiSelectCard<String>> itemlist = [];
  @override
  void initState() {
    itemlist = [
      MultiSelectCard(
        value: 'Dart',
        child: getChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'Python',
        child: getChild(
            'http://assets.stickpng.com/images/5848152fcef1014c0b5e4967.png',
            'Python'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
          value: 'JavaScript',
          child: getChild(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png',
              'JavaScript'),
          seletedChild: getSeletedChild(
              'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
              'Dart')),
      MultiSelectCard(
        value: 'Java',
        child: getChild(
            'http://assets.stickpng.com/images/58480979cef1014c0b5e4901.png',
            'Java'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'C#',
        child: getChild(
            'https://seeklogo.com/images/C/c-sharp-c-logo-02F17714BA-seeklogo.com.png',
            'C#'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'C++',
        child: getChild(
            'https://cdn.freebiesupply.com/logos/thumbs/2x/c-logo.png', 'C++'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'Go Lang',
        child: getChild(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Go_Logo_Blue.svg/1200px-Go_Logo_Blue.svg.png',
            'Go Lang'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'Swift',
        child: getChild(
            'https://d2908q01vomqb2.cloudfront.net/0716d9708d321ffb6a00818614779e779925365c/2021/08/26/swift.png',
            'Swift'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'PHP',
        child: getChild(
            'http://assets.stickpng.com/images/58481791cef1014c0b5e4994.png',
            'PHP'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      ),
      MultiSelectCard(
        value: 'Kotlin',
        child: getChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin_Icon.png',
            'Kotlin'),
        seletedChild: getSeletedChild(
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
            'Dart'),
      )
    ];

    // menusData.forEach((item) {
    //   itemlist.add(MultiSelectCard(
    //       value: item.id!,
    //       child: getChild(item.imageUrl!, item.allergensName!),
    //       seletedChild: getSeletedChild(item.imageUrl!, item.allergensName!),
    //       selected: item.isSelect == 0 ? false : true));
    // });
  }

  Widget getChild(String imagePath, String title) {
    return Opacity(
        opacity: 0.3,
        child: SizedBox(
          width: 325 / 8,
          height: 60,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                imagePath,
                width: 300 / 12,
                height: 32,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(title,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Exo2",
                        fontStyle: FontStyle.normal,
                        fontSize: 9.0),
                    textAlign: TextAlign.center),
              )
            ],
          ),
        ));
  }

  Widget getSeletedChild(String imagePath, String title) {
    return Opacity(
      opacity: 1,
      child: SizedBox(
        width: 300 / 8,
        height: 55,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              imagePath,
              width: 300 / 12,
              height: 32,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(title,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Exo2",
                      fontStyle: FontStyle.normal,
                      fontSize: 9.0),
                  textAlign: TextAlign.center),
            )
          ],
        ),
      ),
    );
  }

  _customSwitch() {
    return Container(
      height: 31.5,
      width: 51,
      decoration: BoxDecoration(
          color: _switchValue == true ? Colors.black : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: CupertinoSwitch(
        thumbColor: Colors.white,
        // 当前 switch 的开关
        value: _switchValue,
        activeColor: Color(0xff3eb1c8), // 开关打开时，轨道颜色
        trackColor: Colors.black, // 开关关闭时，轨道颜色
        dragStartBehavior:
            DragStartBehavior.down, // 拖拽效果，默认为 start 更为平滑，为 down 时有明显吸附效果
        onChanged: (value) {
          setState(() {
            _switchValue = value;
            if (_switchValue == false) {
              _controller.deselectAll();
            } else {
              _controller.selectAll();
            }
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Alérgenos",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Exo2",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0)),
            Expanded(child: SizedBox()),
            Text("Todos",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Exo2",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.right),
            SizedBox(width: 10),
            _customSwitch(),
            SizedBox(width: 10),
          ],
        ),
        SizedBox(height: 10),
        const SizedBox(
          height: 10,
        ),
        MultiSelectContainer(
            controller: _controller,
            wrapSettings: const WrapSettings(
                alignment: WrapAlignment.start, runSpacing: 15, spacing: 10),
            itemsPadding: const EdgeInsets.all(0),
            // itemsChild: MultiSelectNormalChild(
            //     child:getUnSeletedChild(imagePath, title, iftrue)
            // ),
            itemsDecoration: const MultiSelectDecorations(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    //圆角
                    Radius.circular(5.0),
                  ),
                  color: Colors.black),
              selectedDecoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    //圆角
                    Radius.circular(5.0),
                  ),
                  color: Colors.black
                  //
                  // borderRadius: BorderRadius.all(
                  //   //圆角
                  //   Radius.circular(5.0),
                  // ),
                  // color: ColorStyle.solidBlueMain
                  ),
            ),
            items: itemlist,
            onChange: (allSelectedItems, selectedItem) {
              setState(() {
                if (allSelectedItems.length == itemlist.length) {
                  _switchValue = true;
                } else {
                  _switchValue = false;
                }
              });
            })
      ],
    );
  }
}
