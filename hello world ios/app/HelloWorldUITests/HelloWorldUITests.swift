import XCTest

final class HelloWorldUITests: XCTestCase {

    func testHelloWorldTextExists() throws {
        let app = XCUIApplication()
        app.launch()

        let helloWorldText = app.staticTexts["Hello World!"]
        XCTAssertTrue(helloWorldText.exists)
    }
}
