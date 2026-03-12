import 'package:flutter/material.dart';
import '../../theme/lulu_theme.dart';
import 'lulu_button.dart';

/// LuluButton 完整用法示例
/// Skill 通过读取此文件学习如何使用 LuluButton
class LuluButtonSample extends StatelessWidget {
  const LuluButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LuluTheme.of(context).background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── 变体 ────────────────────────────────────────────────────
              const Text('Variants', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              // 主按钮（最常用）
              LuluButton(
                label: 'Primary',
                onPressed: () {},
              ),
              const SizedBox(height: 12),

              // 次按钮
              LuluButton(
                label: 'Outline',
                variant: LuluButtonVariant.outline,
                onPressed: () {},
              ),
              const SizedBox(height: 12),

              // 幽灵按钮
              LuluButton(
                label: 'Ghost',
                variant: LuluButtonVariant.ghost,
                onPressed: () {},
              ),
              const SizedBox(height: 12),

              // 危险按钮
              LuluButton(
                label: 'Delete Account',
                variant: LuluButtonVariant.danger,
                onPressed: () {},
              ),

              const SizedBox(height: 32),

              // ── 尺寸 ────────────────────────────────────────────────────
              const Text('Sizes', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              LuluButton(label: 'Small', size: LuluButtonSize.small, onPressed: () {}),
              const SizedBox(height: 12),
              LuluButton(label: 'Medium (default)', size: LuluButtonSize.medium, onPressed: () {}),
              const SizedBox(height: 12),
              LuluButton(label: 'Large', size: LuluButtonSize.large, onPressed: () {}),

              const SizedBox(height: 32),

              // ── 带图标 ──────────────────────────────────────────────────
              const Text('With Icon', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              LuluButton(
                label: 'Add to Plan',
                leading: const Icon(Icons.add, size: 18, color: Colors.black),
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              LuluButton(
                label: 'Continue',
                trailing: const Icon(Icons.arrow_forward, size: 18, color: Colors.black),
                onPressed: () {},
              ),

              const SizedBox(height: 32),

              // ── 撑满宽度 ────────────────────────────────────────────────
              const Text('Expanded', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              LuluButton(
                label: 'Get Started',
                expanded: true,
                onPressed: () {},
              ),

              const SizedBox(height: 32),

              // ── 加载中 ──────────────────────────────────────────────────
              const Text('Loading', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              LuluButton(
                label: 'Saving...',
                loading: true,
                expanded: true,
                onPressed: () {},
              ),

              const SizedBox(height: 32),

              // ── 禁用 ────────────────────────────────────────────────────
              const Text('Disabled', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              LuluButton(
                label: 'Disabled',
                expanded: true,
                onPressed: null, // null = 禁用
              ),
            ],
          ),
        ),
      ),
    );
  }
}
