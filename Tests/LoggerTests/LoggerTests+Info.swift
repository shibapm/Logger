extension LoggerTests {
    func testItPrintsTheInfoMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logInfo(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenPrintsMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoesntPrintTheInfoMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logInfo(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoentPrintTheInfoMessageIfIsSilent() {
        givenALogger(isVerbose: true, isSilent: true)
        logger.logInfo(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheInfoMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.logInfo(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheInfoMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.logInfo(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
}
