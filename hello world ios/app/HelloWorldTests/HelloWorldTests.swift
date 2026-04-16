import XCTest
@testable import HelloWorld

final class HelloWorldTests: XCTestCase {

    func testContentViewExists() throws {
        let view = ContentView()
        XCTAssertNotNil(view)
    }
}
