import XCTest
@testable import GModule

class GModuleTests: XCTestCase {

    func testSupported() {
        XCTAssertTrue(module_supported())
    }

    func testNonExistent() {
        XCTAssertNil(ModuleRef.open(file_name: "non/existent", flags: ModuleFlags(rawValue: UInt32(0))))
    }

}
extension GModuleTests {
    static var allTests : [(String, (GModuleTests) -> () throws -> Void)] {
        return [
            ("testSupported",   testSupported),
            ("testNonExistent", testNonExistent),
        ]
    }
}
