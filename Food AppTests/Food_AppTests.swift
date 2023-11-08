//
//  Food_AppTests.swift
//  Food AppTests
//
//  Created by marlon arteaga on 7/11/23.
//

import XCTest
@testable import Food_App

final class Food_AppTests: XCTestCase {

    func isMail(_ mail: String) -> Bool {
        return mail.contains("@")
    }
    
    func successFormat() {
        XCTAssertTrue(isMail("my@bancom.com"))
        XCTAssertTrue(isMail("you@bancom.com.pe"))
        XCTAssertTrue(isMail("we@bancom.pe"))
    }
    
    func errorFormat() {
        XCTAssertFalse(isMail("mybancom.com"))
        XCTAssertFalse(isMail("you.com.pe"))
        XCTAssertFalse(isMail("we@"))
    }

}
