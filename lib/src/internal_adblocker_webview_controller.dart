import 'package:zikzak_inappwebview/zikzak_inappwebview.dart';

abstract class InternalWebviewController {
  /// Sets inAppWebviewController to be used in future
  /// Typically not to be used by third parties
  void setInternalController(InAppWebViewController controller);
}
