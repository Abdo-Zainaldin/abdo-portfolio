import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/theme/app_theme.dart';

class TechnologyLogos extends StatefulWidget {
  const TechnologyLogos({required this.tools, super.key});

  final List<PortfolioTool> tools;

  @override
  State<TechnologyLogos> createState() => _TechnologyLogosState();
}

class _TechnologyLogosState extends State<TechnologyLogos>
    with SingleTickerProviderStateMixin {
  static const double _itemGap = 56;
  static const double _sequenceGap = 72;
  static const double _movementSpeed = 34;
  static const double _carouselHeight = 34;

  final GlobalKey _firstSequenceKey = GlobalKey();

  late final AnimationController _controller;

  double _sequenceWidth = 0;
  bool _isHovered = false;
  bool _reduceMotion = false;
  bool _measurementScheduled = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final shouldReduceMotion = MediaQuery.disableAnimationsOf(context);

    if (_reduceMotion == shouldReduceMotion) {
      return;
    }

    _reduceMotion = shouldReduceMotion;

    if (_reduceMotion) {
      _controller.stop();
    } else {
      _scheduleMeasurement();
    }
  }

  @override
  void didUpdateWidget(covariant TechnologyLogos oldWidget) {
    super.didUpdateWidget(oldWidget);

    // The total width may change when tools are edited in portfolio.json.
    if (oldWidget.tools != widget.tools) {
      _controller.stop();
      _controller.reset();
      _sequenceWidth = 0;
      _scheduleMeasurement();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final visibleTools = widget.tools.where((tool) => tool.isVisible).toList()
      ..sort((first, second) {
        return first.sortOrder.compareTo(second.sortOrder);
      });

    if (visibleTools.isEmpty) {
      return const SizedBox.shrink();
    }

    if (!_reduceMotion && _sequenceWidth == 0) {
      _scheduleMeasurement();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.toolsBehindMyWork,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: AppTheme.textSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 28),
        if (_reduceMotion)
          _StaticTechnologyList(tools: visibleTools)
        else
          _AnimatedTechnologyCarousel(
            tools: visibleTools,
            controller: _controller,
            sequenceWidth: _sequenceWidth,
            sequenceGap: _sequenceGap,
            carouselHeight: _carouselHeight,
            firstSequenceKey: _firstSequenceKey,
            onHoverChanged: _handleHover,
          ),
      ],
    );
  }

  void _scheduleMeasurement() {
    if (_measurementScheduled || !mounted) {
      return;
    }

    _measurementScheduled = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _measurementScheduled = false;

      if (!mounted) {
        return;
      }

      final renderObject = _firstSequenceKey.currentContext?.findRenderObject();

      if (renderObject is! RenderBox || !renderObject.hasSize) {
        return;
      }

      final measuredWidth = renderObject.size.width;

      if (measuredWidth <= 0) {
        return;
      }

      if ((_sequenceWidth - measuredWidth).abs() > 0.5) {
        setState(() {
          _sequenceWidth = measuredWidth;
        });
      }

      _configureAnimation(measuredWidth);
    });
  }

  void _configureAnimation(double width) {
    if (_reduceMotion || width <= 0) {
      _controller.stop();
      return;
    }

    final travelDistance = width + _sequenceGap;

    // The duration grows with the content width so the visual speed
    // remains consistent when tools are added or removed.
    final durationMilliseconds = ((travelDistance / _movementSpeed) * 1000)
        .round();

    _controller.duration = Duration(milliseconds: durationMilliseconds);

    if (!_isHovered) {
      _controller.repeat();
    }
  }

  void _handleHover(bool isHovered) {
    _isHovered = isHovered;

    if (_reduceMotion || _sequenceWidth <= 0) {
      return;
    }

    if (isHovered) {
      _controller.stop(canceled: false);
    } else {
      _controller.repeat();
    }
  }
}

class _AnimatedTechnologyCarousel extends StatelessWidget {
  const _AnimatedTechnologyCarousel({
    required this.tools,
    required this.controller,
    required this.sequenceWidth,
    required this.sequenceGap,
    required this.carouselHeight,
    required this.firstSequenceKey,
    required this.onHoverChanged,
  });

  final List<PortfolioTool> tools;
  final AnimationController controller;
  final double sequenceWidth;
  final double sequenceGap;
  final double carouselHeight;
  final GlobalKey firstSequenceKey;
  final ValueChanged<bool> onHoverChanged;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHoverChanged(true),
      onExit: (_) => onHoverChanged(false),
      child: SizedBox(
        height: carouselHeight,
        child: ShaderMask(
          blendMode: BlendMode.dstIn,
          shaderCallback: (bounds) {
            return const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.transparent,
                Colors.black,
                Colors.black,
                Colors.transparent,
              ],
              stops: [0, 0.06, 0.94, 1],
            ).createShader(bounds);
          },
          child: ClipRect(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  final travelDistance = sequenceWidth + sequenceGap;

                  final horizontalOffset = travelDistance * controller.value;

                  return Transform.translate(
                    offset: Offset(-horizontalOffset, 0),
                    child: child,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    KeyedSubtree(
                      key: firstSequenceKey,
                      child: _TechnologySequence(tools: tools),
                    ),
                    SizedBox(width: sequenceGap),
                    ExcludeSemantics(child: _TechnologySequence(tools: tools)),
                    SizedBox(width: sequenceGap),
                    ExcludeSemantics(child: _TechnologySequence(tools: tools)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TechnologySequence extends StatelessWidget {
  const _TechnologySequence({required this.tools});

  final List<PortfolioTool> tools;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var index = 0; index < tools.length; index++) ...[
          _TechnologyItem(tool: tools[index]),
          if (index < tools.length - 1)
            const SizedBox(width: _TechnologyLogosState._itemGap),
        ],
      ],
    );
  }
}

class _StaticTechnologyList extends StatelessWidget {
  const _StaticTechnologyList({required this.tools});

  final List<PortfolioTool> tools;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 32,
      runSpacing: 18,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [for (final tool in tools) _TechnologyItem(tool: tool)],
    );
  }
}

class _TechnologyItem extends StatelessWidget {
  const _TechnologyItem({required this.tool});

  final PortfolioTool tool;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      image: true,
      label: tool.name,
      child: Opacity(
        opacity: 0.76,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: _TechnologyLogo(path: tool.logo),
            ),
            const SizedBox(width: 9),
            Text(
              tool.name,
              maxLines: 1,
              softWrap: false,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TechnologyLogo extends StatelessWidget {
  const _TechnologyLogo({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    if (path.toLowerCase().endsWith('.svg')) {
      return SvgPicture.asset(
        path,
        excludeFromSemantics: true,
        colorFilter: const ColorFilter.mode(
          AppTheme.textSecondary,
          BlendMode.srcIn,
        ),
      );
    }

    return Image.asset(
      path,
      fit: BoxFit.contain,
      excludeFromSemantics: true,
      color: AppTheme.textSecondary,
      colorBlendMode: BlendMode.srcIn,
      errorBuilder: (_, __, ___) {
        return const Icon(
          Icons.code_rounded,
          size: 22,
          color: AppTheme.textSecondary,
        );
      },
    );
  }
}
