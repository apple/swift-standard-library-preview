#if !canImport(ObjectiveC)
import XCTest

extension SE0270_Tests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SE0270_Tests = [
        ("test_SE0270_RangeSet", test_SE0270_RangeSet),
    ]
}

extension SE0288_Tests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SE0288_Tests = [
        ("test_SE02288_IsPower", test_SE02288_IsPower),
    ]
}

extension UmbrellaTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__UmbrellaTests = [
        ("test_SE02288_IsPower", test_SE02288_IsPower),
        ("test_SE0270_RangeSet", test_SE0270_RangeSet),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SE0270_Tests.__allTests__SE0270_Tests),
        testCase(SE0288_Tests.__allTests__SE0288_Tests),
        testCase(UmbrellaTests.__allTests__UmbrellaTests),
    ]
}
#endif
