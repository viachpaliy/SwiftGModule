import XCTest
@testable import GModule

class SwiftGModuleTests: XCTestCase {

    func testSupported() {
        XCTAssertTrue(module_supported())
    }

    func testNonExistent() {
        XCTAssertNil(ModuleRef.open(file_name: "non/existent", flags: ModuleFlags(rawValue: UInt32(0))))
    }

}
extension SwiftGModuleTests {
    static var allTests : [(String, (SwiftGModuleTests) -> () throws -> Void)] {
        return [
            ("testSupported",   testSupported),
            ("testNonExistent", testNonExistent),
        ]
    }
}
