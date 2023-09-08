import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double width;
  final Color? color;
  const DottedLine({
    super.key,
    required this.width,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return _buildLine(width: width, color: color);
  }

  Widget _buildLine({
    required double width,
    Color? color,
  }) {
    int modifiedWidth = _modifiedWidth(width);
    int numbersOfIntermediateDashes =
        _calculateNumbersOfIntermediateDashes(modifiedWidth);
    int totalNumbersOfRowLineItems =
        _totalNumbersOfRowLineItems(numbersOfIntermediateDashes);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _createLine(totalNumbersOfRowLineItems, color),
    );
  }

  /// the line is a list of Row children
  /// assume the index starts from 1 not 0
  /// if index is odd the item is FillPart(dash)
  /// if index is even the item is EmptyPart (in between space)
  /// the first and last item has half width of dash width
  List<Widget> _createLine(int totalNumbersOfRowLineItems, Color? color) {
    List<Widget> rowChilderen = [];
    for (var i = 1; i <= totalNumbersOfRowLineItems; i++) {
      /// the first and last item has half width of dash width
      if (i == 1 || i == totalNumbersOfRowLineItems) {
        rowChilderen.add(
          FillPart(
            width: 2,
            color: color,
          ),
        );

        /// if not first or last item
      } else {
        /// if index is odd the item is FillPart(dash)
        /// if index is even the item is EmptyPart (in between space)
        if (i.isOdd) {
          rowChilderen.add(FillPart(
            color: color,
          ));
        } else {
          rowChilderen.add(
            const EmptyPart(),
          );
        }
      }
    }
    return rowChilderen;
  }

  int _totalNumbersOfRowLineItems(int numbersOfDashes) {
    /// n+(n+1)+2
    /// n numbersOfDashes
    /// (n+1) numbersOfInbetweenSpaces
    /// 2 the firs and last dash
    return numbersOfDashes + numbersOfDashes + 1 + 2;
  }

  int _modifiedWidth(double width) {
    int formedIntWidth = width.toInt();
    if ((formedIntWidth % 6) != 0 || formedIntWidth > 0) {
      while ((formedIntWidth % 6) != 0) {
        formedIntWidth--;
      }
    }
    return formedIntWidth;
  }

  /// width=nOfDashes+nOfInbetweenSpace+lastDash+fisrsDash
  /// nOfDashes=n;
  /// nOfInbetweenSpace=n+1;
  /// widthOfDashes=4px;
  /// widthOfInbetweenSpaces=2px;
  /// widthOflastDash=2px;
  /// widthOfFirstDash=2px;
  /// width=n*4+(n+1)*2+2+2;
  /// width=4n+2n+6;
  /// n=(width/6)-1;

  static int _calculateNumbersOfIntermediateDashes(int width) {
    return ((width / 6) - 1).toInt();
  }
}

class FillPart extends StatelessWidget {
  final double? width;
  final Color? color;
  const FillPart({super.key, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width ?? 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color ?? Colors.grey,
      ),
    );
  }
}

class EmptyPart extends StatelessWidget {
  const EmptyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 1,
      width: 2,
    );
  }
}

/// this divider can fit in width could be divided by 6 so:
/// if the width is 30px then the divider width will be 30px
/// if the width is 29px then the divider width will be 24px
/// if the width is 24px then the divider width will be 24px
/// if the width is 23px the the divider width will be 18px
/// and so on

class DottedLineLayout extends StatelessWidget {
  const DottedLineLayout({
    super.key,
    this.indent,
    this.endIndent,
    this.color,
  });

  final double? indent;
  final double? endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: indent ?? 0, right: endIndent ?? 0),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints size) {
          if (size.maxWidth < MediaQuery.sizeOf(context).width) {
            /// 5px the least width for the dotted line without render exception
            /// if the width to fit the dotted line less than 5
            /// it return a sized box with the width=maxWidth
            if (size.maxWidth <= 5) {
              return SizedBox(
                width: size.maxWidth,
              );
            } else {
              /// if max width more than 5px return the dotted line
              return DottedLine(width: size.maxWidth, color: color);
            }
          } else {
            throw (Exception('infinite width exception'));
          }
        },
      ),
    );
  }
}

class DottedDivider extends StatelessWidget {
  final Color? color;
  final double? indent;
  final double? endIndent;
  const DottedDivider({
    super.key,
    this.color,
    this.indent,
    this.endIndent,
  });
  @override
  Widget build(BuildContext context) {
    if (context.findAncestorWidgetOfExactType<Row>() is Row) {
      return Expanded(
        child: DottedLineLayout(
          indent: indent,
          endIndent: endIndent,
          color: color,
        ),
      );
    } else {
      return DottedLineLayout(
        indent: indent,
        endIndent: endIndent,
        color: color,
      );
    }
  }
}
