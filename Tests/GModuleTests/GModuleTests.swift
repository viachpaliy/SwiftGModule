import XCTest
@testable import GModule

class GModuleTests: XCTestCase {

    func testSupported() {
        XCTAssertTrue(moduleSupported())
    }

    func testNonExistent() {
        XCTAssertNil(ModuleRef.open(fileName: "non/existent", flags: ModuleFlags(rawValue: UInt32(0))))
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
