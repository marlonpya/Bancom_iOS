//
//  Food_AppUITests.swift
//  Food AppUITests
//
//  Created by marlon arteaga on 7/11/23.
//

import XCTest

final class Food_AppUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    let mail = "mail@bancom.com"
    let code = "123"
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func testLogin() {
        let username = app.textFields["Correo electrónico"]
        let password = app.secureTextFields["Contraseña"]
        let button = app.buttons["Ingresar"]
        
        username.tap()
        username.typeText("mail@bancom.com")
        XCTAssertTrue(username.exists)
        
        password.tap()
        password.typeText("123")
        XCTAssertTrue(password.exists)
        
        button.tap()
        
        XCTAssertEqual(username.value as! String, mail)
    }
}
