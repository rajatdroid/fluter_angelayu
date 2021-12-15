class StoryPoJo {
  String _storyText = '';
  String _routeOne ='';
  String _routeTwo ='';
  int _routeOneNext=0;
  int _routeTwoNext = 0;

  StoryPoJo(this._storyText, this._routeOne, this._routeTwo, this._routeOneNext, this._routeTwoNext);

  String getStoryText() => this._storyText;

  String getRouteOne() => this._routeOne;

  String getRouteTwo() => this._routeTwo;

  int getNextRouteOne() => this._routeOneNext;

  int getNextRouteTwo() => this._routeTwoNext;

}