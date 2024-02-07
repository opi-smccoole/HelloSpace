# HelloSpace
A simple, ugly, very contrived sample application for my "Tips, Tricks (and little things you (might've) missed) About iOS Development" talk given at the [MSP Mobile Talks](https://www.meetup.com/msp-mobile-talks/) user group meeting on 02/06/2024.  The slides for the presentation are also included [here](https://github.com/opi-smccoole/HelloSpace/blob/main/TipsTricksMobileDevelopment.pptx).

The project is configured with the following tools and utilites for demonstration purposes:
* [XcodeGen](https://github.com/yonaskolb/XcodeGen) - configuration file [project.yml](https://github.com/opi-smccoole/HelloSpace/blob/main/project.yml)
* [SwiftGen](https://github.com/SwiftGen/SwiftGen) - configuration file [swiftgen.yml](https://github.com/opi-smccoole/HelloSpace/blob/main/swiftgen.yml)
* [SwiftLint](https://github.com/realm/SwiftLint) - configuration file [.swiftlint.yml](https://github.com/opi-smccoole/HelloSpace/blob/main/.swiftlint.yml)

It also provides examples of how to switch back to full Info.plist files and disable the automatic type generation of Image and Color assets in Xcode 15 to work properly with XcodeGen and SwiftGen.

## Initial start:
1. Make sure you have XcodeGen installed.  `brew install xcodegen`
1. Clone the repository.
1. Change directory to the top of the project (where the project.yml is).
1. Run `xcodegen generate`, build and launch.

## Branch switching:
1. Check out branch with second page and other file and group changes. `git checkout smccoole/second-page`
1. Re-run `xcodegen generate` to update Xcode's project.pbxproj.
1. Build and run as usual.

## Other interesting things:
* The files created by SwiftGen are under the `HelloSpace/Generated` folder.  The `smccoole/second-page` branch includes the addtion of Fonts so be sure to check that out.
* You can see examples of how the type safe definitions created by SwiftGen are used in the views.
* If you make changes to the Fonts, Assets or Localizable.strings file, you must first run a build before trying to use the new or updated enumerations because SwiftGen is run in the pre-build and must update the generated files.
