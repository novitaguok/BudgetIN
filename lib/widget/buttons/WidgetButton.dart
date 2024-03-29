import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  var isOutline = false;

  WidgetButton.large(
    this.text, {
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  WidgetButton.largeOutline(
    this.text, {
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78,
        isOutline = true;

  WidgetButton(this.text,
      {this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 53,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: CustomTheme.colorBlueDark)),
        onPressed: onPressed!=null? onPressed:()=>{},
        color: !isOutline ? CustomTheme.colorBlueDark : CustomTheme.colorWhite,
        child: !isOutline ? WidgetText.poppinsMediumWhite24(text): WidgetText.poppinsMediumBlue24(text),
      ),
    );
  }
}

class WidgetButtonDialog extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  WidgetButtonDialog.large(
    this.text, {
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  WidgetButtonDialog(this.text,
      {this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    var asymetricalRoundedCorners = Container(
      width: 372,
      height: 53,
      padding: EdgeInsets.all(0.0),
      child: Center(child: WidgetText.poppinsRegularWhite20(text)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          color: CustomTheme.colorBlueDark),
    );

    return Center(child: asymetricalRoundedCorners);
  }
}

class ButtonBack extends StatelessWidget {
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  ButtonBack.large({
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  ButtonBack({this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 45.97,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: CustomTheme.colorBlueDark)),
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: CustomTheme.colorBlueDark,
        textColor: Colors.white,
        child: Center(
          child: Image.asset(Assets.iconArrowLeft),
        ),
      ),
    );
  }
}

class ButtonAdd extends StatelessWidget {
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  ButtonAdd.large({
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  ButtonAdd({this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: ClipOval(
        child: RaisedButton(
          onPressed: () {},
          color: CustomTheme.colorYellow,
          child: Center(
            child: Image.asset(Assets.iconPlusBlue),
          ),
        ),
      ),
    );
  }
}
