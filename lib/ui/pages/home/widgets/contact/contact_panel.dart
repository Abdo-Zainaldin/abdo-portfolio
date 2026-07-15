import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';
import 'contact_links.dart';

class ContactPanel extends StatefulWidget {
  const ContactPanel({
    required this.email,
    required this.socialLinks,
    required this.cvPath,
    super.key,
  });

  final String email;
  final List<SocialLink> socialLinks;
  final String cvPath;

  @override
  State<ContactPanel> createState() => _ContactPanelState();
}

class _ContactPanelState extends State<ContactPanel> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) {
        setState(() => _isHovered = true);
      },
      onExit: (_) {
        setState(() => _isHovered = false);
      },
      child: AnimatedContainer(
        duration: reduceMotion
            ? Duration.zero
            : const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
        transform: Matrix4.translationValues(
          0,
          _isHovered && context.isDesktop ? -5 : 0,
          0,
        ),
        decoration: BoxDecoration(
          color: AppTheme.surface1,
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          border: Border.all(
            color: _isHovered
                ? AppTheme.primary.withAlpha(75)
                : AppTheme.borderSubtle,
          ),
          boxShadow: [
            BoxShadow(
              color: _isHovered
                  ? AppTheme.primary.withAlpha(20)
                  : Colors.black.withAlpha(24),
              blurRadius: _isHovered ? 42 : 28,
              offset: const Offset(0, 18),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          child: Stack(
            children: [
              Positioned(
                top: -90,
                right: -80,
                child: Container(
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        AppTheme.primary.withAlpha(30),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedContainer(
                    duration: reduceMotion
                        ? Duration.zero
                        : const Duration(milliseconds: 260),
                    height: 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.primary,
                          _isHovered
                              ? AppTheme.secondary
                              : AppTheme.primary.withAlpha(35),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      context.responsiveValue(mobile: 22, desktop: 30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.contactPanelLabel.toUpperCase(),
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                color: AppTheme.secondary,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.5,
                              ),
                        ),
                        if (widget.email.isNotEmpty) ...[
                          const SizedBox(height: 24),
                          ContactEmailBlock(email: widget.email),
                        ],
                        if (widget.email.isNotEmpty &&
                            (widget.socialLinks.isNotEmpty ||
                                widget.cvPath.isNotEmpty))
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 28),
                            child: Divider(
                              height: 1,
                              color: AppTheme.borderSubtle,
                            ),
                          ),
                        ContactLinkList(
                          socialLinks: widget.socialLinks,
                          cvPath: widget.cvPath,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactEmailBlock extends StatefulWidget {
  const ContactEmailBlock({required this.email, super.key});

  final String email;

  @override
  State<ContactEmailBlock> createState() => _ContactEmailBlockState();
}

class _ContactEmailBlockState extends State<ContactEmailBlock> {
  bool _isCopied = false;
  int _copyOperation = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.contactEmailLabel,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: AppTheme.textMuted),
        ),
        const SizedBox(height: 10),
        SelectableText(
          widget.email,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: AppTheme.textPrimary,
            fontWeight: FontWeight.w700,
            height: 1.35,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          context.l10n.contactEmailDescription,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppTheme.textSecondary,
            height: 1.55,
          ),
        ),
        const SizedBox(height: 22),
        LayoutBuilder(
          builder: (context, constraints) {
            final stackButtons = constraints.maxWidth < 390;

            final sendButton = ContactActionButton(
              label: context.l10n.contactSendEmail,
              icon: Icons.mail_outline_rounded,
              isPrimary: true,
              onPressed: _sendEmail,
            );

            final copyButton = ContactActionButton(
              label: _isCopied
                  ? context.l10n.contactEmailCopied
                  : context.l10n.contactCopyEmail,
              icon: _isCopied
                  ? Icons.check_rounded
                  : Icons.content_copy_rounded,
              isPrimary: false,
              onPressed: _copyEmail,
            );

            if (stackButtons) {
              return Column(
                children: [
                  SizedBox(width: double.infinity, child: sendButton),
                  const SizedBox(height: 12),
                  SizedBox(width: double.infinity, child: copyButton),
                ],
              );
            }

            return Row(
              children: [
                Expanded(child: sendButton),
                const SizedBox(width: 12),
                Expanded(child: copyButton),
              ],
            );
          },
        ),
      ],
    );
  }

  Future<void> _sendEmail() async {
    final uri = Uri(scheme: 'mailto', path: widget.email);

    try {
      final opened = await launchUrl(uri);

      if (!opened && mounted) {
        _showError();
      }
    } catch (_) {
      if (mounted) {
        _showError();
      }
    }
  }

  Future<void> _copyEmail() async {
    await Clipboard.setData(ClipboardData(text: widget.email));

    final operation = ++_copyOperation;

    if (!mounted) {
      return;
    }

    setState(() {
      _isCopied = true;
    });

    await Future<void>.delayed(const Duration(milliseconds: 1800));

    if (!mounted || operation != _copyOperation) {
      return;
    }

    setState(() {
      _isCopied = false;
    });
  }

  void _showError() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(context.l10n.contactActionFailed)));
  }
}

class ContactActionButton extends StatefulWidget {
  const ContactActionButton({
    required this.label,
    required this.icon,
    required this.isPrimary,
    required this.onPressed,
    super.key,
  });

  final String label;
  final IconData icon;
  final bool isPrimary;
  final VoidCallback onPressed;

  @override
  State<ContactActionButton> createState() => _ContactActionButtonState();
}

class _ContactActionButtonState extends State<ContactActionButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    final backgroundColor = widget.isPrimary
        ? AppTheme.primary
        : _isHovered
        ? AppTheme.primary.withAlpha(15)
        : AppTheme.surface2;

    final foregroundColor = widget.isPrimary
        ? AppTheme.background
        : _isHovered
        ? AppTheme.primary
        : AppTheme.textPrimary;

    return Semantics(
      button: true,
      label: widget.label,
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
              : const Duration(milliseconds: 210),
          curve: Curves.easeOutCubic,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            border: Border.all(
              color: widget.isPrimary
                  ? AppTheme.primary
                  : _isHovered
                  ? AppTheme.primary.withAlpha(90)
                  : AppTheme.borderSubtle,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            child: InkWell(
              onTap: widget.onPressed,
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSwitcher(
                      duration: reduceMotion
                          ? Duration.zero
                          : const Duration(milliseconds: 180),
                      child: Icon(
                        widget.icon,
                        key: ValueKey(widget.icon),
                        size: 18,
                        color: foregroundColor,
                      ),
                    ),
                    const SizedBox(width: 9),
                    Flexible(
                      child: AnimatedSwitcher(
                        duration: reduceMotion
                            ? Duration.zero
                            : const Duration(milliseconds: 180),
                        child: Text(
                          widget.label,
                          key: ValueKey(widget.label),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: foregroundColor,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
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
