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

import SE0270_RangeSet
import XCTest

final class SE0270_Tests: XCTestCase {
  func test_SE0270_RangeSet() {
    let set = RangeSet<Double>(0.0..<100.0)
    XCTAssertTrue(set.contains(50.0))
    
    let numbers = (0..<100).map { _ in Int.random(in: 1...100) }
    let filtered = numbers.filter { $0 >= 50 }
    let subset = numbers[numbers.subranges(where: { $0 >= 50 })]
    XCTAssertTrue(filtered.elementsEqual(subset))
  }
}
