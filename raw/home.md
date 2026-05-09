# Unreal Engine Angelscript

UnrealEngine-Angelscript is a set of engine modifications and a plugin for UE5 that integrates a full-featured scripting language.

It is actively developed by [Hazelight](http://hazelight.se/), creators of [Split Fiction](https://www.ea.com/games/split-fiction/split-fiction) and [It Takes Two](https://www.ea.com/games/it-takes-two), which were shipped with the majority of their gameplay written in angelscript.

Games from [several other studios](https://angelscript.hazelight.se/project/resources) have also been released using UnrealEngine-Angelscript.

The unreal plugin that integrates angelscript is open source, and has received contributions from studios in Stockholm and globally.

See [Scripting Introduction](https://angelscript.hazelight.se/getting-started/introduction) for an introduction to the scripting language.

Come talk to us in our [Discord Server](https://discord.gg/39wmC2e) if you're interested or have questions!

## Mission Statement

When making gameplay systems of higher complexity, blueprint visual scripting can easily lead to unmaintainable spaghetti. However, making these systems in C++ imposes long iteration times, and can be daunting for designers or gameplay scripters to use.

With this plugin you can write gameplay in a customized version of [Angelscript](https://www.angelcode.com/angelscript/), a simple but powerful scripting language.

Some key benefits that this plugin helps achieve:

- **Rapid Iteration**  - Scripts can be reloaded instantly in the editor, letting developers focus on creating cool shit instead of waiting for compiles and editor restarts.

- **Improved Cooperation**  - Because programmers and designers are no longer separated by the C++/Blueprint divide, they can work closely together using the same systems and tools.

- **Performance**  - Angelscript performs significantly better than blueprint for game scripting, and approaches native C++ performance when using [transpiled scripts](https://angelscript.hazelight.se/cpp-bindings/precompiled-data) in a shipping build.

## Features

### Familiar but Simplified

![](https://aka.doubaocdn.com/s/eC8j1wNnYP)

Programmers used to working in Unreal C++ will find the scripts instantly familiar, but with many key simplifications to make life easier for designers and avoid common C++ pitfalls.

### Script Hot Reload for Fast Iteration

See your changes to scripted actors and components reflected immediately when you hit save.

All modifications to scripts can be reloaded without restarting the Unreal Editor. While running the game in PIE (Play In Editor), non-structural changes to the script code can also be reloaded without having to exit the play session!

![](https://aka.doubaocdn.com/s/FiOK1wNnYP)

### Scripting with Full Editor Support

To make scripting easier, a [Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=Hazelight.unreal-angelscript) is available implementing full Language Server Protocol support.

This includes support for many editor features, such as:

- Code Autocompletion

- Error Diagnostics

- Rename Symbol

- Find All References

- Semantic Highlighting

![](https://aka.doubaocdn.com/s/QIFe1wNnYP)

### Integration with existing C++ and Blueprint workflows

Angelscript classes can override any BlueprintImplementableEvent you expose from C++, and can be used seamlessly as base classes for child blueprints.

Use whatever combination of tools fits your workflow best.

![](https://aka.doubaocdn.com/s/a3ld1wNnYP)

### Debugging Support Through Visual Studio Code

Debug your script code through the Visual Studio Code extension. Set breakpoints and inspect variables, and step through your scripts to find issues.

![](https://aka.doubaocdn.com/s/DgmV1wNnYP)

## Navigation

- [Home](https://angelscript.hazelight.se/)
- [Join Discord Server](https://discord.gg/39wmC2e)
- [Script API Reference](https://angelscript.hazelight.se/api)

### Getting Started

- [Installation](https://angelscript.hazelight.se/getting-started/installation/)
- [Scripting Introduction](https://angelscript.hazelight.se/getting-started/introduction/)

### Script Features

- [Functions and BlueprintEvents](https://angelscript.hazelight.se/scripting/functions-and-events/)
- [Properties and Accessors](https://angelscript.hazelight.se/scripting/properties-and-accessors/)
- [Actors and Components](https://angelscript.hazelight.se/scripting/actors-components/)
- [Function Libraries](https://angelscript.hazelight.se/scripting/function-libraries/)
- [FName Literals](https://angelscript.hazelight.se/scripting/fname-literals/)
- [Formatted Strings](https://angelscript.hazelight.se/scripting/format-strings/)
- [Structs and References](https://angelscript.hazelight.se/scripting/structs-refs/)
- [Networking Features](https://angelscript.hazelight.se/scripting/networking-features/)
- [Delegates and Events](https://angelscript.hazelight.se/scripting/delegates/)
- [Mixin Methods](https://angelscript.hazelight.se/scripting/mixin-methods/)
- [Gameplay Tags](https://angelscript.hazelight.se/scripting/gameplaytags/)
- [Editor-Only Script](https://angelscript.hazelight.se/scripting/editor-script/)
- [Subsystems](https://angelscript.hazelight.se/scripting/subsystems/)
- [Script Tests](https://angelscript.hazelight.se/scripting/script-tests/)
- [Differences with Unreal C++](https://angelscript.hazelight.se/scripting/cpp-differences/)

### C++ Usage and Bindings

- [Automatic Bindings](https://angelscript.hazelight.se/cpp-bindings/automatic-bindings/)
- [Script Mixin Libraries](https://angelscript.hazelight.se/cpp-bindings/mixin-libraries/)
- [Using Precompiled Scripts](https://angelscript.hazelight.se/cpp-bindings/precompiled-data/)

### UE-AS Development

- [Development Status](https://angelscript.hazelight.se/project/development-status/)
- [Resources and Links](https://angelscript.hazelight.se/project/resources/)
- [License](https://angelscript.hazelight.se/project/license/)
