# AI Build Prompt for iOS "Hello World!" App

Use the prompt below verbatim. It is self-contained and references the architecture document already in this repo for full context.

---

## Prompt

```
You have access to this repository. Read the architecture document at:

  "hello world ios/documentation/architecture.md"

That document is the complete specification. Your job is to implement every file it describes inside the "hello world ios/app/" directory. Follow these instructions exactly:

1. Read the architecture document in full before writing any code.

2. Create the following directory structure under "hello world ios/app/":

   HelloWorld.xcodeproj/
   HelloWorld/
     Assets.xcassets/
       AccentColor.colorset/
       AppIcon.appiconset/
     Preview Content/
       Preview Assets.xcassets/
   HelloWorldTests/
   HelloWorldUITests/

3. Create these source files with the EXACT content specified in the architecture document (Sections 3.1 through 3.8):

   - HelloWorld/HelloWorldApp.swift       (Section 3.1)
   - HelloWorld/ContentView.swift          (Section 3.2)
   - HelloWorld/Assets.xcassets/Contents.json                          (Section 3.3)
   - HelloWorld/Assets.xcassets/AccentColor.colorset/Contents.json     (Section 3.4)
   - HelloWorld/Assets.xcassets/AppIcon.appiconset/Contents.json       (Section 3.5)
   - HelloWorld/Preview Content/Preview Assets.xcassets/Contents.json  (Section 3.6)
   - HelloWorldTests/HelloWorldTests.swift                             (Section 3.7)
   - HelloWorldUITests/HelloWorldUITests.swift                         (Section 3.8 - first file)
   - HelloWorldUITests/HelloWorldUITestsLaunchTests.swift              (Section 3.8 - second file)

4. Create the Xcode project file at HelloWorld.xcodeproj/project.pbxproj. This is the most critical file. It must:

   a. Be a valid PBX project file that Xcode 15+ can open without errors.

   b. Use the archiveVersion/objectVersion format:
      - archiveVersion = 1
      - objectVersion = 56 (Xcode 15 format)

   c. Generate unique 24-character hexadecimal UUIDs for every object. Every cross-reference must be internally consistent.

   d. Define exactly three native targets:
      - "HelloWorld" (com.apple.product-type.application)
      - "HelloWorldTests" (com.apple.product-type.bundle.unit-test) with TEST_HOST pointing to HelloWorld.app
      - "HelloWorldUITests" (com.apple.product-type.bundle.ui-testing) with TEST_TARGET_NAME = HelloWorld

   e. Include all required PBX sections in this order:
      - PBXBuildFile
      - PBXContainerItemProxy
      - PBXFileReference
      - PBXFrameworksBuildPhase
      - PBXGroup
      - PBXNativeTarget
      - PBXProject
      - PBXResourcesBuildPhase
      - PBXSourcesBuildPhase
      - PBXTargetDependency
      - XCBuildConfiguration
      - XCConfigurationList

   f. Apply ALL build settings listed in Section 4.1 of the architecture document, including:
      - IPHONEOS_DEPLOYMENT_TARGET = 17.0
      - SWIFT_VERSION = 5.0
      - GENERATE_INFOPLIST_FILE = YES
      - All INFOPLIST_KEY_* settings
      - TARGETED_DEVICE_FAMILY = "1,2"
      - Correct Debug vs Release differences (optimization, testability, debug info)

   g. Wire up source files to the correct targets:
      - HelloWorldApp.swift and ContentView.swift -> HelloWorld target Sources phase
      - Assets.xcassets -> HelloWorld target Resources phase
      - Preview Content folder -> HelloWorld target Resources phase
      - HelloWorldTests.swift -> HelloWorldTests target Sources phase
      - HelloWorldUITests.swift and HelloWorldUITestsLaunchTests.swift -> HelloWorldUITests target Sources phase

   h. Set up target dependencies:
      - HelloWorldTests depends on HelloWorld
      - HelloWorldUITests depends on HelloWorld
      - Include PBXContainerItemProxy entries for each dependency

   i. The project's mainGroup should organize files into groups matching the folder structure, plus a "Products" group containing the three product references (HelloWorld.app, HelloWorldTests.xctest, HelloWorldUITests.xctest) and a "Frameworks" group (empty).

5. Do NOT create any of the following:
   - Info.plist (auto-generated via build settings)
   - LaunchScreen.storyboard (auto-generated via build settings)
   - SceneDelegate or AppDelegate
   - .gitignore
   - Package.swift, Podfile, or Cartfile

6. After creating all files, commit your changes with message "Add iOS Hello World app with Xcode project, SwiftUI views, and tests" and push to the current branch.

7. Double-check: every file reference UUID in project.pbxproj must match an actual PBXFileReference entry, every build file UUID must match a PBXBuildFile entry, and every group child UUID must reference a valid object. A single broken reference will prevent Xcode from opening the project.
```
