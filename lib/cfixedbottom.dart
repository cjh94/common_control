import 'cwidget.dart';

class CFixedBottom extends CWidget {
  CFixedBottom(
      {super.key,
      this.body,
      this.children,
      required this.bottom,
      super.margin,
      super.width,
      super.height,
      super.padding,
      super.border,
      super.flex,
      super.style});

  final Widget? body;
  final List<Widget>? children;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    const fixedBottomPadding = EdgeInsets.all(20);

    Widget? body = this.body;
    EdgeInsetsGeometry padding = super.padding ?? fixedBottomPadding;

    if (children != null) {
      body = CColumn(children: children!);
    }    
      
    Widget widget = CColumn(
        margin: margin,
        width: width,
        height: height,
        padding: padding,
        border: border,
        flex: flex,
        style: style,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: SingleChildScrollView(child: body!)),
          Container(margin: const EdgeInsets.only(top: 20), child: bottom)
        ]);

    return widget;
  }
}
