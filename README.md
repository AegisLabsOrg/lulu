# Lulu Design System

A Flutter UI component library with dark-first theming, semantic design tokens, and ready-to-use components. Built for the Jovida design language.

## Features

- **Design Tokens** — Color palette, spacing scale, and border radius constants
- **Theme System** — `LuluThemeData` with built-in `dark()` and `light()` presets, propagated via `InheritedWidget`
- **Components** — Button, Text, Input, Card, Avatar, Tag/Badge, Divider, Scaffold

## Getting started

Add to your `pubspec.yaml`:

```yaml
dependencies:
  lulu: ^0.0.1
```

Wrap your app with `LuluThemeScope`:

```dart
import 'package:lulu/lulu.dart';

LuluThemeScope(
  theme: LuluThemeData.dark(),
  child: MyApp(),
)
```

## Usage

### Button

```dart
LuluButton(label: '提交', onPressed: () {})
LuluButton(label: '取消', variant: LuluButtonVariant.outline, onPressed: () {})
LuluButton(label: '删除', variant: LuluButtonVariant.danger, onPressed: () {})
LuluButton(label: '登录', expanded: true, loading: true)
```

### Text

```dart
LuluText.displayMd('页面标题')
LuluText.bodyMd('正文内容')
LuluText.caption('说明文字')
```

### Input

```dart
LuluInput(
  label: '手机号',
  placeholder: '请输入手机号',
  keyboardType: TextInputType.phone,
  controller: _controller,
)
```

### Card

```dart
LuluCard(
  onTap: () {},
  child: Column(children: [...]),
)
```

### Avatar

```dart
LuluAvatar(imageUrl: 'https://...', size: LuluAvatarSize.lg)
LuluAvatar(name: 'Zhang Yucheng')
```

### Tag / Badge

```dart
LuluTag(label: '进行中')
LuluTag(label: '已完成', color: LuluColors.green)
LuluBadge(count: 5, child: Icon(Icons.notifications))
```

### Scaffold

```dart
LuluScaffold(
  title: '页面标题',
  scrollable: true,
  body: MyContent(),
  bottomBar: LuluButton(label: '确认', expanded: true, onPressed: () {}),
)
```

## Theme

```dart
// Read theme in any widget
final theme = LuluTheme.of(context);

// Use semantic colors
theme.primary
theme.background
theme.textPrimary
theme.textSecondary
theme.error
```

## Design Tokens

```dart
// Colors
LuluColors.primary      // #ACFF4E
LuluColors.green
LuluColors.red
LuluColors.blue

// Spacing
LuluSpacing.xs    // 4
LuluSpacing.sm    // 8
LuluSpacing.md    // 16
LuluSpacing.lg    // 24
LuluSpacing.xl    // 32

// Border radius
LuluSpacing.radiusMd    // 12
LuluSpacing.radiusLg    // 16
LuluSpacing.radiusFull  // 999 (pill)
```

## Claude Code Skill

Lulu 提供了一个配套的 [Claude Code Skill](https://github.com/AegisLabsOrg/lulu_skill)，让 AI 能够基于本设计系统直接从 PRD 生成完整的 Flutter 页面和弹窗代码。

安装 skill 后，在 Claude Code 中输入：

```
/lulu 做一个用户注册页，需要填写昵称、手机号、密码，底部有提交按钮
```

Claude 会自动使用 `LuluScaffold`、`LuluButton`、`LuluInput` 等组件，严格遵循设计规范，输出完整可运行的页面代码。

- [lulu_skill on GitHub](https://github.com/AegisLabsOrg/lulu_skill)

## Additional information

- [GitHub Repository](https://github.com/AegisLabsOrg/lulu)
- [Issue Tracker](https://github.com/AegisLabsOrg/lulu/issues)
