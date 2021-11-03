// swift-tools-version:5.1
//===----------------------------------------------------------*- swift -*-===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

import PackageDescription

/// Details about an SE package.
struct Export {
  var package: String
  var requirement: Package.Dependency.Requirement
  
  var name: String {
    let parts = package.split(separator: "-")
    let SE = parts[1].uppercased()
    let name = parts[2...].map { $0.capitalized }.joined()
    return "\(SE)_\(name)"
  }
  
  var packageDependency: PackageDescription.Package.Dependency {
    .package(url: "https://github.com/apple/\(package)", requirement)
  }
  
  var targetDependency: Target.Dependency {
    .product(name: name, package: package)
  }
}

/// The list of SE packages to re-export.
let exports = [
  Export(package: "swift-se0270-range-set", requirement: .upToNextMajor(from: "1.0.0")),
  Export(package: "swift-se0288-is-power", requirement: .upToNextMajor(from: "2.0.0")),
]

/// The `StandardLibraryPreview` package definition.
let package = Package(
  name: "swift-standard-library-preview",
  products: [
    .library(
      name: "StandardLibraryPreview",
      targets: ["StandardLibraryPreview"]),
  ],
  dependencies: exports.map { $0.packageDependency },
  targets: [
    .target(
      name: "StandardLibraryPreview",
      dependencies: exports.map { $0.targetDependency }),
    
    .testTarget(
      name: "ExportTests",
      dependencies: ["StandardLibraryPreview"]),
  ]
)
