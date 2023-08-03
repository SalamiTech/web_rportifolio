import '../models/welcome_page.model.dart';
import 'iwelcome.repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {
  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return WelcomePageModel(
          name: 'Salami',
          title: 'Software Engineer',
          subTitle: 'Flutter Developer',
          imgPath: 'https://avatars.githubusercontent.com/u/92346444?v=4',
          greetings: ["hello", "hola", "bonjour", "ciao"]);
    });
  }
}
