import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/presentation/view/user/componet/UserWidget.dart';
import 'package:sample_project/presentation/viewmodel/UserViewModel.dart';
import '../../di/SetupDependencies.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserViewModel>(
      create: (context) => getIt<UserViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("깃허브 통신 테스트"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Consumer<UserViewModel>( // Consumer 사용
            builder: (context, viewModel, child) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: inputController,
                          decoration: const InputDecoration(
                            labelText: 'name',
                            hintText: 'Enter search name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            viewModel.getUser(name: inputController.text);
                          },
                          child: const Text("Search"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  if(viewModel.user.totalCount! >= 0) UserWidget(viewModel.user)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
