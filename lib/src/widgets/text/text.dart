import 'package:flutter/widgets.dart' as w;
import 'package:flutter/widgets.dart' hide Text;
import 'package:mac_ui/src/theme/theme.dart';

part 'text_type.dart';
part 'text_weight.dart';
part 'text_design.dart';

/// Displays text using the current semantic typography.
class Text extends StatelessWidget {
  /// Displays text using the current semantic typography.
  const new(
    this.data, {
    this.maxLines = 1,
    this.type = .body,
    this.weight = .regular,
    this.design = .regular,
    this.color,
    super.key,
  });

  /// The text to display.
  final String? data;

  /// The maximum number of lines to display.
  final int? maxLines;

  /// The semantic text type.
  final TextType type;

  /// The font weight.
  final TextWeight weight;

  /// The text design.
  final TextDesign design;

  /// The text color.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final text = Theme.textThemeOf(context);
    final style = switch (type) {
      .body => text.body,
      .callout => text.callout,
      .footnote => text.footnote,
      .caption => text.caption.c1,
      .caption2 => text.caption.c2,
      .subHeadline => text.headline.sub,
      .headline => text.headline.regular,
      .title => text.title.t1,
      .title2 => text.title.t2,
      .title3 => text.title.t3,
      .largeTitle => text.title.large,
      .xLargeTitle => text.title.xLarge1,
      .xLargeTitle2 => text.title.xLarge2,
    };

    return w.Text(
      data ?? '',
      style: style.copyWith(
        color: color,
        fontWeight: weight.fontWeight,
        fontFamily: design.fontFamily,
      ),
    );
  }
}
