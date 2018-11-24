import XCTest
@testable import Logger
import TestSpy
import Nimble

final class LoggerTests: XCTestCase {
    var logger: Logger!
    var printer: SpyPrinter!
    
    let testMessage = "TestMessage"
    let testMessage2 = "Message2"
    lazy var testMessages = [testMessage, testMessage2]
    let testSeparator = "-"
    let testTerminator = "\n"
    
    override func setUp() {
        super.setUp()
        printer = SpyPrinter()
    }
    
    override func tearDown() {
        printer = nil
        logger = nil
    }

    func givenALogger(isVerbose: Bool, isSilent: Bool) {
        logger = Logger(isVerbose: isVerbose, isSilent: isSilent, printer: printer)
    }
    
    func thenPrintsMessage(_ message: String, terminator: String) {
        expect(self.printer).to(haveReceived(.print(message: message, terminator: terminator)))
    }
    
    func thenDoesntPrintMessage(_ message: String, terminator: String) {
        expect(self.printer).toNot(haveReceived(.print(message: message, terminator: terminator)))
    }
}
