import 'package:clickup_dart_sdk/clickup_dart_sdk.dart';

void main() async {
  final token = "pk_testrandomtoken123";
  // Initialize with mock server for testing
  final clickUp = ClickUp(
      apiEndpoint: "https://a00fb6e0-339c-4201-972f-503b9932d17a.remockly.com")
    ..initialize(authToken: token);

  final attachment = await clickUp.attachments.createTaskAttachment(
      taskID: "8669e046h",
      useCustomTaskID: false,
      filePath: "./test/beksinski_sample.jpg");
  print(attachment);
  final listComments = await clickUp.comments.getListComments(listID: 1);
  print(listComments);
}
