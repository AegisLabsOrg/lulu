import 'package:flutter/material.dart';
import 'lulu_input.dart';

/// LuluInput 完整用法示例
class LuluInputSample extends StatelessWidget {
  const LuluInputSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 基础输入框
        const LuluInput(placeholder: 'Enter your name'),

        const SizedBox(height: 16),

        // 带 label
        const LuluInput(
          label: 'Email',
          placeholder: 'you@example.com',
          keyboardType: TextInputType.emailAddress,
        ),

        const SizedBox(height: 16),

        // 带左侧图标
        const LuluInput(
          placeholder: 'Search',
          leading: Icon(Icons.search, size: 18, color: Colors.grey),
        ),

        const SizedBox(height: 16),

        // 密码输入框
        const LuluInput(
          label: 'Password',
          placeholder: '••••••••',
          obscureText: true,
          trailing: Icon(Icons.visibility_off, size: 18, color: Colors.grey),
        ),

        const SizedBox(height: 16),

        // 错误状态
        const LuluInput(
          label: 'Email',
          placeholder: 'you@example.com',
          errorText: 'Invalid email address',
        ),

        const SizedBox(height: 16),

        // 多行输入
        const LuluInput(
          placeholder: 'Write a note...',
          maxLines: 4,
        ),

        const SizedBox(height: 16),

        // 禁用
        const LuluInput(
          placeholder: 'Disabled',
          enabled: false,
        ),
      ],
    );
  }
}
