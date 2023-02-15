import 'Router.dart';
import 'Configration.dart';
import '../config/routes.dart';
import '../config/environment.dart';
class Application{

  /*
   * Container of Objects
   * 
   * @var List<Map> 
   */
  Map<String,dynamic> container = {};
  /*
   * @var Configration config Object of class Configration
   */
  Configration config;

  /*
   * @var Router router Object of class Router
   */
  Router router = Router();

  /*
   * Constructor method
   * 
   * @param Configration config Object of class Configration
   */
  Application(this.config){
    set('configration',Configration(env));
    registerClasses();
    generateRoutes(routes);
  }

  /*
   * this medthod generated all route in app to using depending routes file in configration path
   *
   * @param List<Map> routes
   */
  void generateRoutes(List<Map> routes) {
    for (var element in routes) {
      switch(element['requestAction']) {  

        case 'get': {
          router.get(url: Configration.BASE_ENDPOINT + element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']);
        }
        break;

        case 'post': {
          router.post(url: Configration.BASE_ENDPOINT + element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']);
        }
        break;
        
        case 'update': {
          router.update(url: Configration.BASE_ENDPOINT + element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']); 
        }
        break;
        
        case 'delete': {
          router.delete(url: Configration.BASE_ENDPOINT + element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']);
        }
      }
    }
  }

  /*
   * initialize main app object
   * 
   * @return void 
   */
  void bootstrap(){

  }

  /*
   * share the given Key|Value in Application calss
   * 
   * @param string key
   * @param Object value
   * @return void 
   */
  void set(String key, [Object? value = null]){
    if(value == null){
      // container[key] = 
    }else {
      container[key] = value;
    }
    
  }

  dynamic get(String key){
    return container[key];
  }

  bool has(String key){
    if(container[key] != null) {
      return true;
    }

    return false;
  }

  dynamic call(String key){
    if(! has(key)){
      set(key);
    }
    return get(key);
  }
  /*
   * 
   */
  void registerClasses(){
    

  }
}