library(simpleTestPackage)
library(RUnit)

## define test suite
ts <- defineTestSuite("c2f",
                      dirs = system.file("tests", package = "simpleTestPackage"),
                      testFileRegexp = "^runit.+\\.r",   # default
                      testFuncRegexp = "^test.+")        # also default

## run test suite:
res <- runTestSuite(ts)

## print text protocol to console:
printTextProtocol(res)

if (getErrors(res)$nFail > 0) stop("TEST FAILED!")
if (getErrors(res)$nErr > 0) stop("TEST HAD ERRORS!")
if (getErrors(res)$nTestFunc < 1) stop("NO TEST FUNCTIONS RUN!")
