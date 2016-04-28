// #docplaster
// #docregion
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import '../about/about.dart';
import '../home/home_component.dart';
import '../common/base_component.dart';

import '../../service/event_bus.dart';
import 'dart:async';
@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES],
    providers: const [EventBus]
)
@RouteConfig(const [
  const Route(path: '/about', name: 'About', component: AboutComponent),
  const Route(path: '/', name: 'Home', component: HomeComponent),

])
class AppComponent  extends BaseComponent implements OnInit {
  String title = 'Начальная строаница';
  List<Map> alerts = [];
  bool isLoaded = false;
  bool hasErrors = false;
  bool get showApp => isLoaded;
  EventBus eventBus;

  AppComponent(this.eventBus);

  ngOnInit() {
    eventBus.appTitle.listen(setTitle);
  }
  setTitle(String event) {
    logger.fine('setTitle $event');
    scheduleMicrotask(() {
      title = event;
    });
  }
}
