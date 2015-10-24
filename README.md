# AccessorBugTest
Test program to reproduce an accessor bug in Swift 1.2

Just run the test case *testAttributeAccessor* in Release mode and watch it it fail.
It won't fail in Debug configurations.

If you erase var states and var descriptions, it will stop failing as well.
No idea why yet.

# Branches
* Check branch 'swift2' to reproduce the same bug in Swift 2.0.
* Check branch 'fix-objc-enum' for a workaround.


# Discussion

http://stackoverflow.com/questions/32533909/accessor-gives-the-wrong-value-in-swift-1-2-2-0-release-build-only

# Fix
The bug has been fixed in Xcode 7.1/Swift 2.1.
