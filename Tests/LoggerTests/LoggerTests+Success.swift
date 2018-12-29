@testable import Logger

extension LoggerTests {
    func testItPrintsTheSuccessMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logSuccess(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenPrintsSuccessMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoesntPrintTheSuccessMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logSuccess(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintSuccessMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoentPrintTheSuccessMessageIfIsSilent() {
        givenALogger(isVerbose: true, isSilent: true)
        logger.logSuccess(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintSuccessMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheSuccessMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logSuccess(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsSuccessMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheSuccessMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logSuccess(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsSuccessMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    private func thenPrintsSuccessMessage(_ message: String, terminator: String) {
        thenPrintsMessage(successMessage(fromMessage: message), terminator: terminator)
    }
    
    private func thenDoesntPrintSuccessMessage(_ message: String, terminator: String) {
        thenDoesntPrintMessage(successMessage(fromMessage: message), terminator: terminator)
    }
    
    private func successMessage(fromMessage message: String) -> String {
        return Colors.green.rawValue + "✔" + Colors.default.rawValue + " " + message
    }
}
