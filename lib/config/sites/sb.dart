import '../site_customization.dart';

/// 烧饼论坛站点配置。
///
/// sb.sb 运行标准 Discourse 能力，客户端只启用通用论坛功能，不带入
/// 其它社区的积分、审核或头像特效等专属插件。
final sbCustomization = SiteCustomization(
  linkSecurityConfig: _sbLinkSecurityConfig,
);

const _sbLinkSecurityConfig = LinkSecurityConfig(
  enableExitConfirmation: true,
  internalDomains: [
    '*.sb.sb',
    'localhost',
    '*.local',
    '^127(?:\\.(?:25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}',
    '^10(?:\\.(?:25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}',
    '^192\\.168(?:\\.(?:25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){2}',
  ],
  trustedDomains: [
    'sb.sb',
    '*.sb.sb',
    'cache.imgproxy.org',
  ],
  riskyDomains: [
    'bit.ly',
    'tinyurl.com',
    't.co',
    'goo.gl',
    'ow.ly',
    'buff.ly',
    'cutt.us',
    'is.gd',
    'v.gd',
  ],
);
