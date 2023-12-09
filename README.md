# SDN Course Project
## Installing and Setting up Flutter
Refer the following link to install and setup required tech stack for the application: https://docs.flutter.dev/get-started/install

After installing Flutter, we would also need to install Android-studio and command-line tools for Android SDK:
- Install and setup android-studio from this link: https://developer.android.com/studio/install

**NOTE:** For Linux/Ubuntu, android-studio is already an application available on Ubun tu Software. We can install it directly from there.

- Download and setup the command-line-tools by following these steps:
  - Open android-studio
  - Click on "More Actions" option on the boot window. Select SDK Manager from the options it shows.
  - In the "Android SDK" section, go to the SDK Tools section.
  - Check the box for "Android SDK Command-line Tools (latest)" and click ok.
- Running "flutter doctor" would ask you to acccept some android-licenses. Run the following command to fix this:

```
flutter doctor --android-licenses
```
- Running the application: 
This can be done in two ways
  - Setup an android emulator: https://developer.android.com/studio/run/managing-avds
  - Running on your local android device: This requires for activating USB-debugging in the developer options. Follow this link to do so: https://developer.android.com/studio/run/device

This concludes the setup for Flutter.

# Clone the project:

Clone the project from the repository: https://github.com/PrabalMahajan11/SDN_final/ 

# Running the Application

- Start the emulator or connect or android mobile with your laptop and allow for USB debugging.
- Run the application using command: "flutter run"
- Select the device you want to run the application on.

