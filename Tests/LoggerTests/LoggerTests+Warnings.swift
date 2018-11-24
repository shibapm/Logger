@testable import Logger

extension LoggerTests {
    func testItPrintsTheWarningMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logWarning(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenPrintsWarningMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoesntPrintTheWarningMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logWarning(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintWarningMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoentPrintTheWarningMessageIfIsSilent() {
        givenALogger(isVerbose: true, isSilent: true)
        logger.logWarning(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintWarningMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheWarningMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logWarning(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsWarningMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheWarningMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logWarning(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsWarningMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    private func thenPrintsWarningMessage(_ message: String, terminator: String) {
        thenPrintsMessage(warningMessage(fromMessage: message), terminator: terminator)
    }
    
    private func thenDoesntPrintWarningMessage(_ message: String, terminator: String) {
       thenDoesntPrintMessage(warningMessage(fromMessage: message), terminator: terminator)
    }
    
    private func warningMessage(fromMessage message: String) -> String {
        return Colors.yellow.rawValue + "WARNING: " + message
    }
}
