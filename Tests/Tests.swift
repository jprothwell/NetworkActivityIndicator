import UIKit
import XCTest

class Tests: XCTestCase {
    override func setUp() {
        super.setUp()

        for _ in 0..<NetworkActivityIndicator.sharedIndicator.numberOfCalls {
            NetworkActivityIndicator.sharedIndicator.visible = false
        }
    }

    func testVisible() {
        NetworkActivityIndicator.sharedIndicator.visible = true

        XCTAssertTrue(UIApplication.sharedApplication().networkActivityIndicatorVisible)
    }

    func testHidden() {
        NetworkActivityIndicator.sharedIndicator.visible = false

        XCTAssertFalse(UIApplication.sharedApplication().networkActivityIndicatorVisible)
    }


    func testMultipleVisible() {
        NetworkActivityIndicator.sharedIndicator.visible = true
        NetworkActivityIndicator.sharedIndicator.visible = true
        NetworkActivityIndicator.sharedIndicator.visible = true

        XCTAssertTrue(UIApplication.sharedApplication().networkActivityIndicatorVisible)
    }

    func testMultipleHidden() {
        NetworkActivityIndicator.sharedIndicator.visible = false
        NetworkActivityIndicator.sharedIndicator.visible = false
        NetworkActivityIndicator.sharedIndicator.visible = false

        XCTAssertFalse(UIApplication.sharedApplication().networkActivityIndicatorVisible)
    }

    func testBalance() {
        NetworkActivityIndicator.sharedIndicator.visible = true
        NetworkActivityIndicator.sharedIndicator.visible = true
        NetworkActivityIndicator.sharedIndicator.visible = true

        XCTAssertTrue(UIApplication.sharedApplication().networkActivityIndicatorVisible)

        NetworkActivityIndicator.sharedIndicator.visible = false

        XCTAssertTrue(UIApplication.sharedApplication().networkActivityIndicatorVisible)

        NetworkActivityIndicator.sharedIndicator.visible = false
        NetworkActivityIndicator.sharedIndicator.visible = false

        XCTAssertFalse(UIApplication.sharedApplication().networkActivityIndicatorVisible)
    }
}
