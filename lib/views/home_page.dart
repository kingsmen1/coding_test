import 'package:coding_test/views/components/code_editor.dart';
import 'package:coding_test/constants/constants.dart';
import 'package:coding_test/views/components/question.dart';
import 'package:coding_test/views/components/submit_button.dart';
import 'package:coding_test/views/components/warning.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(Constants.title),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover,
              opacity: 0.2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //Question Section.
                    const Question(),
                    const SizedBox(height: 20.0),
                    // Code Editor Section
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Constants.codeEditor,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: Colors.green[900]),
                          ),
                          const SizedBox(height: 10.0),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const SizedBox(
                              height: 200,
                              child: CodeEditor(),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20.0),
                    //Submit Code Button.
                    const SubmitButton(),
                    const Spacer(),
                    //Warning Box.
                    const Warning(),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
