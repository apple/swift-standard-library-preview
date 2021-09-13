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

import StandardLibraryPreview
import XCTest

// Verify that symbols from each of the exported libraries is visible after
// importing only the StandardLibraryPreview module.

final class UmbrellaTests: XCTestCase {
  func test_SE0270_RangeSet() {
    let set = RangeSet<Double>(0.0..<100.0)
    XCTAssertTrue(set.contains(50.0))
    
    let numbers = (0..<100).map { _ in Int.random(in: 1...100) }
    let filtered = numbers.filter { $0 >= 50 }
    let subset = numbers[numbers.subranges(where: { $0 >= 50 })]
    XCTAssertTrue(filtered.elementsEqual(subset))

    // Types accessed through the preview package and individual modules are
    // identical.
    XCTAssertTrue(
      StandardLibraryPreview.RangeSet<Int>.self
        == SE0270_RangeSet.RangeSet<Int>.self)
  }

  func test_SE02288_IsPower() {
    XCTAssertTrue(1024.isPower(of: 2))
    XCTAssertTrue(6561.isPower(of: 3))
    XCTAssertTrue(1000.isPower(of: 10))

    XCTAssertFalse(1000.isPower(of: 2))
    XCTAssertFalse(1024.isPower(of: 3))
    XCTAssertFalse(6561.isPower(of: 10))
  }
}
