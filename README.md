# XojoKit
A collection of classes for parsing Xojo projects.

`XojoKit` is capable of parsing `.xojo_project` and `xojo_xml_project` projects into an abstract `XKProject` that represents all items (classes, interfaces and modules) contained within a Xojo project. The items are populated with the members (e.g. properties, methods, etc) and all source code.