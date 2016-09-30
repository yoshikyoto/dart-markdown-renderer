import 'dart:html';
import 'dart:async';
import 'MdConverter.dart';

/**
 * 処理の起点となるController
 */
class Controller {

  /**
   * mainメソッドから非同期に定期的に呼ばれるメソッド
   */
  periodic(Timer timer) {
    window.console.log('periodic');
    TextAreaElement textarea = document.query('textarea#body');
    String md = textarea.value;
    window.console.log(textarea.value);

    MdConverter converter = new MdConverter(md);
    String html = converter.toHtml();
    window.console.log(html);

    DivElement view = document.query('div#rendered-body');
    view.innerHtml = html;
  }
}
