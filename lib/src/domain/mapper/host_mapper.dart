import 'package:adblocker_webview/src/domain/entity/host.dart';
import 'package:zikzak_inappwebview/zikzak_inappwebview.dart';

List<ContentBlocker> mapHostToContentBlocker(List<Host> hostList) {
  return hostList
      .map(
        (e) => ContentBlocker(
          trigger: ContentBlockerTrigger(
            urlFilter: _createUrlFilterFromAuthority(e.authority),
          ),
          action: ContentBlockerAction(
            type: ContentBlockerActionType.BLOCK,
          ),
        ),
      )
      .toList();
}

String _createUrlFilterFromAuthority(String authority) => '.*.$authority/.*';
