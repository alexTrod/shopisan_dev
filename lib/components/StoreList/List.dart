import 'package:flutter/material.dart';
import 'package:animated_list_view_scroll/animated_list_view_scroll.dart';
import 'package:shopisan_dev/components/StoreList/StoreItem.dart';

class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : AnimatedListViewScroll(
        itemCount: 10, //REQUIRED
        itemHeight: 60, //REQUIRED (Total height of a single item must contains optional padding or margin)
        animationOnReverse: true,
        animationDuration: Duration(milliseconds: 200),
        itemBuilder: (context, index) {
          return AnimatedListViewItem(
            key: GlobalKey(), //REQUIRED
            index: index, //REQUIRED
            animationBuilder: (context, index, controller) {
              Animation<Offset> animation = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero).animate(controller);
              return SlideTransition(
                position: animation,
                child: Container(
                  height: 60,
                  child: Card(
                    child: StoreItem(
                        storeId : index
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
