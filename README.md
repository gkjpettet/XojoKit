# XojoKit
A collection of classes for parsing Xojo projects.

`XojoKit` is capable of parsing `.xojo_project` and `xojo_xml_project` projects into an abstract `XKProject` that represents all items (classes, interfaces and modules) contained within a Xojo project. The items are populated with the members (e.g. properties, methods, etc) and all source code.

If you run the demo and select a Xojo project the app will break after parsing it so you can inspect the project's contents.

## Requirements
You need the following MonkeyBread Software (MBS) plugins:
- Utils
- RegEx
- Main

You'll also need to create a module called `RegisterPlugins` that contains a single method `MBS()`. You should use this to register your MBS plugins. For obvious reasons this isn't included in this repo.
