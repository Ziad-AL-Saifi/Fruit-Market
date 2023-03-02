import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future loginWithGoogle();
  Future lofinWithFacebook();
  Future moreInfo(
      {@required String? name,
      @required String? phone,
      @required String? address});
}
