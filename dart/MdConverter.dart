import 'markdown/lib/markdown.dart' as mdlib;

class MdConverter {
  String md;

  MdConverter(this.md);
  
  toHtml() {
    return mdlib.markdownToHtml(this.md);
  }
}