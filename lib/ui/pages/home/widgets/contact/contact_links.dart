import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/ui/app_widget/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';

class ContactLinkList extends StatelessWidget {
  const ContactLinkList({
    required this.socialLinks,
    required this.cvPath,
    super.key,
  });

  final List<SocialLink> socialLinks;
  final String cvPath;

  @override
  Widget build(BuildContext context) {
    if (socialLinks.isEmpty && cvPath.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.contactLinksLabel.toUpperCase(),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: AppTheme.secondary,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 14),
        for (var index = 0; index < socialLinks.length; index++) ...[
          ContactLinkRow(
            label: socialLinks[index].platform,
            subtitle: _domainFromUrl(socialLinks[index].url),
            leading: ContactSocialIcon(socialLink: socialLinks[index]),
            trailingIcon: Icons.arrow_outward_rounded,
            semanticLabel:
                '${context.l10n.contactOpenLink} '
                '${socialLinks[index].platform}',
            onPressed: () => _openExternalUrl(context, socialLinks[index].url),
          ),
          if (index < socialLinks.length - 1 || cvPath.isNotEmpty)
            const Divider(height: 1, color: AppTheme.borderSubtle),
        ],
        if (cvPath.isNotEmpty)
          ContactLinkRow(
            label: context.l10n.contactDownloadCv,
            subtitle: context.l10n.contactCvFormat,
            leading: const ContactLinkIcon(icon: Icons.description_outlined),
            trailingIcon: Icons.download_rounded,
            semanticLabel: context.l10n.contactDownloadCv,
            onPressed: () => _openCv(context, cvPath),
          ),
      ],
    );
  }

  String _domainFromUrl(String value) {
    final uri = Uri.tryParse(value);

    if (uri == null || uri.host.isEmpty) {
      return value;
    }

    return uri.host.replaceFirst('www.', '');
  }

  Future<void> _openExternalUrl(BuildContext context, String value) async {
    final uri = Uri.tryParse(value);

    if (uri == null || !uri.hasScheme) {
      _showError(context);
      return;
    }

    try {
      final opened = await launchUrl(uri, webOnlyWindowName: '_blank');

      if (!opened && context.mounted) {
        _showError(context);
      }
    } catch (_) {
      if (context.mounted) {
        _showError(context);
      }
    }
  }

  Future<void> _openCv(BuildContext context, String path) async {
    final uri = Uri.base.resolve(path);

    try {
      final opened = await launchUrl(uri, webOnlyWindowName: '_blank');

      if (!opened && context.mounted) {
        _showError(context);
      }
    } catch (_) {
      if (context.mounted) {
        _showError(context);
      }
    }
  }

  void _showError(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(context.l10n.contactActionFailed)));
  }
}

class ContactLinkRow extends StatefulWidget {
  const ContactLinkRow({
    required this.label,
    required this.subtitle,
    required this.leading,
    required this.trailingIcon,
    required this.semanticLabel,
    required this.onPressed,
    super.key,
  });

  final String label;
  final String subtitle;
  final Widget leading;
  final IconData trailingIcon;
  final String semanticLabel;
  final VoidCallback onPressed;

  @override
  State<ContactLinkRow> createState() => _ContactLinkRowState();
}

class _ContactLinkRowState extends State<ContactLinkRow> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    return Semantics(
      link: true,
      button: true,
      label: widget.semanticLabel,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() => _isHovered = true);
        },
        onExit: (_) {
          setState(() => _isHovered = false);
        },
        child: AnimatedContainer(
          duration: reduceMotion
              ? Duration.zero
              : const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          transform: Matrix4.translationValues(_isHovered ? 4 : 0, 0, 0),
          decoration: BoxDecoration(
            color: _isHovered
                ? AppTheme.primary.withAlpha(10)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            child: InkWell(
              onTap: widget.onPressed,
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    widget.leading,
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.label,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: _isHovered
                                      ? AppTheme.primary
                                      : AppTheme.textPrimary,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          if (widget.subtitle.isNotEmpty) ...[
                            const SizedBox(height: 4),
                            Text(
                              widget.subtitle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: AppTheme.textMuted),
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(width: 14),
                    AnimatedSlide(
                      duration: reduceMotion
                          ? Duration.zero
                          : const Duration(milliseconds: 220),
                      curve: Curves.easeOutCubic,
                      offset: _isHovered
                          ? const Offset(0.14, -0.08)
                          : Offset.zero,
                      child: Icon(
                        widget.trailingIcon,
                        size: 20,
                        color: _isHovered
                            ? AppTheme.primary
                            : AppTheme.textMuted,
                      ),
                    ),
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

class ContactSocialIcon extends StatefulWidget {
  const ContactSocialIcon({required this.socialLink, super.key});

  final SocialLink socialLink;

  @override
  State<ContactSocialIcon> createState() => _ContactSocialIconState();
}

class _ContactSocialIconState extends State<ContactSocialIcon> {
  Future<String>? _svgSource;

  @override
  void initState() {
    super.initState();
    _loadIcon();
  }

  @override
  void didUpdateWidget(covariant ContactSocialIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.socialLink.icon != widget.socialLink.icon) {
      _loadIcon();
    }
  }

  void _loadIcon() {
    final path = widget.socialLink.icon.trim();

    _svgSource = path.isEmpty ? null : rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    if (_svgSource == null) {
      return ContactLinkIcon(icon: _fallbackIcon);
    }

    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppTheme.surface2,
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: FutureBuilder<String>(
        future: _svgSource,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SvgPicture.string(
              snapshot.data!,
              fit: BoxFit.contain,
              colorFilter: const ColorFilter.mode(
                AppTheme.secondary,
                BlendMode.srcIn,
              ),
            );
          }

          if (snapshot.hasError) {
            return Icon(_fallbackIcon, size: 19, color: AppTheme.secondary);
          }

          return const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              strokeWidth: 1.5,
              color: AppTheme.secondary,
            ),
          );
        },
      ),
    );
  }

  IconData get _fallbackIcon {
    final identifier = [
      widget.socialLink.id,
      widget.socialLink.platform,
    ].join(' ').toLowerCase();

    if (identifier.contains('github')) {
      return Icons.code_rounded;
    }

    if (identifier.contains('linkedin')) {
      return Icons.work_outline_rounded;
    }

    return Icons.link_rounded;
  }
}

class ContactLinkIcon extends StatelessWidget {
  const ContactLinkIcon({required this.icon, super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppTheme.surface2,
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Icon(icon, size: 20, color: AppTheme.secondary),
    );
  }
}
