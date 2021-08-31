# Standard Library Preview

The Swift Standard Library Preview package provides access to new functionality 
that has been accepted into the standard library through the Swift Evolution process,
but has not yet shipped as part of an official Swift release.

Each approved standard library proposal is available as its own individual package, listed below.
The `StandardLibraryPreview` package in this repository acts as an umbrella library,
re-exporting each of the individual packages.

## Included Modules

- [**`SE0270_RangeSet`**](https://github.com/apple/swift-se0270-range-set/): 
  Operations on noncontiguous subranges of collections, 
  such as `subranges(where:)` and `moveSubranges(_:to:)`, 
  as well as the supporting `RangeSet` type.
- [**`SE0288_IsPower`**](https://github.com/apple/swift-se0288-is-power/):
  Extends `BinaryInteger` with an `isPower(of:)` method that returns whether
  an integer is a power of another.

## Usage

To use the umbrella library in a Swift Package Manager project,
add the following to your `Package.swift` file's dependencies:

```swift
.package(url: "https://github.com/apple/swift-standard-library-preview.git", from: "0.0.1"),
```

Next, add the preview package as a dependency for your target:

```swift
.product(name: "StandardLibraryPreview", package: "swift-standard-library-preview"),
```

> **Important:** The Standard Library Preview package is under continuous development,
and maintains a major version of `0` to indicate that it is not intended to be source stable.
For example, after a submodule's functionality has been included
with shipping versions of the Swift standard library for some time,
it may be removed from the umbrella library.
>
> If you require source stability in your project,
add the individual submodules instead of the `swift-standard-library-preview` package.

## Contributing

Contributions to the Standard Library Preview package are welcomed and encouraged!

- For help using the standard library preview package or the related submodules,
  please [visit the Swift forums][user-forums].
- For issues related to these packages, [file a bug at bugs.swift.org][bugs].
- Changes or additions to the APIs are made through
  the [Swift Evolution process][evolution-process].
  Please see the [guide for Contributing to Swift][contributing] for information.

[user-forums]: https://forums.swift.org/c/swift-users/
[bugs]: https://bugs.swift.org
[evolution-process]: https://github.com/apple/swift-evolution/blob/master/process.md
[contributing]: https://swift.org/contributing
