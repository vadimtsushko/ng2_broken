import 'package:angular2/platform/browser.dart';

import 'package:angular2/router.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/platform/common.dart';
import 'package:instock/components/app/app_component.dart';

main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}
