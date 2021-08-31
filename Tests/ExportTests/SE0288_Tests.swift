//===----------------------------------------------------------*- swift -*-===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2021 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

import SE0288_IsPower
import XCTest

final class SE0288_Tests: XCTestCase {
  func test_SE02288_IsPower() {
    XCTAssertTrue(1024.isPower(of: 2))
    XCTAssertTrue(6561.isPower(of: 3))
    XCTAssertTrue(1000.isPower(of: 10))

    XCTAssertFalse(1000.isPower(of: 2))
    XCTAssertFalse(1024.isPower(of: 3))
    XCTAssertFalse(6561.isPower(of: 10))
  }
}
