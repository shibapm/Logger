@testable import Logger

extension LoggerTests {
    func testItPrintsTheErrorMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logError(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenPrintsErrorMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoesntPrintTheErrorMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logError(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintErrorMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoentPrintTheErrorMessageIfIsSilent() {
        givenALogger(isVerbose: true, isSilent: true)
        logger.logError(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintErrorMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheErrorMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logError(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsErrorMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheErrorMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logError(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsErrorMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    private func thenPrintsErrorMessage(_ message: String, terminator: String) {
        thenPrintsMessage(errorMessage(fromMessage: message), terminator: terminator)
    }
    
    private func thenDoesntPrintErrorMessage(_ message: String, terminator: String) {
        thenDoesntPrintMessage(errorMessage(fromMessage: message), terminator: terminator)
    }
    
    private func errorMessage(fromMessage message: String) -> String {
        return Colors.red.rawValue + "ERROR: " + message
    }
}
