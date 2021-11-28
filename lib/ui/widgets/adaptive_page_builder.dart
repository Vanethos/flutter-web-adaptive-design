import 'package:flutter/material.dart';

enum DeviceTypeEnum {
  mobile,
  desktop,
}

typedef AdaptiveWidgetBuilder<DeviceTypeEnum> = Widget Function(
    BuildContext, DeviceTypeEnum);

class AdaptivePageBuilder extends StatefulWidget {
  final AdaptiveWidgetBuilder<DeviceTypeEnum> builder;

  const AdaptivePageBuilder({
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  State<AdaptivePageBuilder> createState() => _AdaptivePageBuilderState();
}

class _AdaptivePageBuilderState extends State<AdaptivePageBuilder>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    WidgetsBinding.instance?.addPostFrameCallback((_) => didChangeMetrics());

    _currentType = _getDeviceType;
  }

  late DeviceTypeEnum _currentType;

  double? get _width => WidgetsBinding.instance != null
      ? WidgetsBinding.instance!.window.physicalSize.width /
          WidgetsBinding.instance!.window.devicePixelRatio
      : null;

  DeviceTypeEnum get _getDeviceType {
    if ((_width ?? 0) < 700) {
      return DeviceTypeEnum.mobile;
    }
    return DeviceTypeEnum.desktop;
  }

  @override
  void didChangeMetrics() {
    final newType = _getDeviceType;

    if (newType != _currentType) {
      _currentType = newType;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _currentType);
  }
}
