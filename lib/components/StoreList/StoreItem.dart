import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class StoreItem extends StatelessWidget {

  StoreItem({this.storeId});
  final int storeId;

  final stores = [{
    'storeName' : 'store 1',
    'storeAddress' : 'address 1',
    'streetAvenue' : 'avenue 1',
    'postalCode' : 'code 1',
    'webSite' : 'website1',
    'storeStatus' : '0',
    'userAdministrationId' : '0',
    'pictureId' : '0',
    'openingTimes' : '0',
  },{
    'storeName' : 'store 2',
    'storeAddress' : 'address 2',
    'streetAvenue' : 'avenue 2',
    'postalCode' : 'code 2',
    'webSite' : 'website2',
    'storeStatus' : '0',
    'userAdministrationId' : '0',
    'pictureId' : '0',
    'openingTimes' : '0',
  }, {
    'storeName' : 'store 2',
    'storeAddress' : 'address 2',
    'streetAvenue' : 'avenue 2',
    'postalCode' : 'code 2',
    'webSite' : 'website2',
    'storeStatus' : '0',
    'userAdministrationId' : '0',
    'pictureId' : '0',
    'openingTimes' : '0',
  }, ]
  ;

  @override
  Widget build(BuildContext context) {

    print(this.storeId%2);
    return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              stores[this.storeId%2]['storeName'],
            ),
            Text(
              "Test store",
              style: TextStyle(color: Colors.black)
            ),
            Text(
                stores[this.storeId%2]['storeAddress'],
            ),
          ],
        ),
    );
  }
}





