import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/dart.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  String code = 'Code here..';
  bool clearEditor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CodeTheme(
        data: CodeThemeData(styles: monokaiSublimeTheme),
        child: CodeField(
          expands: true,
          onChanged: (val) {
            if (clearEditor) return;
            setState(() {
              String str = val;
              String latestVal = str.substring(str.length - 1);
              code = latestVal;
              clearEditor = !clearEditor;
            });
          },
          controller: CodeController(
            text: code,
            language: dart,
          ),
        ),
      ),
    );
  }
}
