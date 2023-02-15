// ignore: file_names
class Router{

  /*
  * List of app routes
  */
  static List<Map> routes = [];

  /*
  * this method add route type get
  * @param string url
  * @param string method
  * @param string controller
  * @return Router Object of router class
  */
  Router get({required String url, required String controller, required String method}) {
    Router.add(url: url, controller: controller, method: method, requestAction: 'get');
    return this;
  }

  /*
  * this method add route type post
  * @param string url
  * @param string method
  * @param string controller
  * @return Router Object of router class
  */
  Router post({required String url, required String controller, required String method}){
    Router.add(url: url, controller: controller, method: method,requestAction: 'post');
    return this;
  }

  /*
  * this method add route type update
  * @param string url
  * @param string method
  * @param string controller
  * @return Router Object of router class
  */
  Router update({required String url, required String controller, required String method}){
    Router.add(url: url, controller: controller, method: method, requestAction: 'update');
    return this;
  }

  /*
  * this method add route type delete
  * @param string url
  * @param string method
  * @param string controller
  * @return Router Object of class router
  */
  Router delete({required String url, required String controller, required String method}){
    Router.add(url: url, controller: controller, method: method,requestAction: 'delete');
    return this;
  }

  /*
  * this function store route name in routes array
  *
  * @param string routeName
  * @return Router Object of class router
  */
  Router name({required String routeName}){
    Router.routes[Router.routes.length - 1]['name'] = routeName;
    return this;
  }
  /*
  * this method add any route in routes list
  *
  * @param string url
  * @param string method
  * @param string controller
  * @param string requestAction 
  * @return void
  */
  static void add({required String url, required String controller, required String method, String requestAction = 'get'}) {
    Router.routes.add(Router.prepareRoute(url: url, controller: controller, method: method, requestAction: requestAction));
  }
  
  /*
   * this method preparing router parameter to [add,post,get,update,delete] methods and append name param in end
   *
   * @param string url
   * @param string method
   * @param string controller
   * @param string requestAction 
   * @return Map<String,String>
   */
  static Map<String,String> prepareRoute({required String url, required String controller, required String method, required String requestAction}) {
    return {
      'url': url,
      'controller': controller,
      'method': method,
      'requestAction': requestAction,
      'name': ''
    };
  }

  /*
   * this method get all route in your app 
   * 
   * @return List<Map> 
   */
  List<Map> routeList() {
    return Router.routes;
  }

  /*
   * this method check if route exists in routes list  
   * 
   * @param String name  the name of router to search
   * @return bool 
   */
  bool routeExists({required String name}) {
    for (var route in Router.routes) {
      if(route['name'] == name) {
        return true;
      } else {
        return false;
      }
    }

    return true;
  }
}