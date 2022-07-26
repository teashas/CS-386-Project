//
//  PokePickerUITests.swift
//  PokePickerUITests
//
//  Created by Chip Chairez on 7/26/22.
//

import XCTest

class PokePickerUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false

    }
    
    // Tests inputting a team name and beginning the process of creating a new team
    //
    func testNewTeam() throws {
        let app = XCUIApplication()
        app.launch()
        
        let teamNameField = app.textFields["Name"]
        XCTAssert(teamNameField.exists)
        teamNameField.tap()
        
        let typedName = "Team Aqua"
        teamNameField.typeText(typedName)
        
        let teamButton = app.buttons["New Team"]
        XCTAssert(teamButton.exists)
        teamButton.tap()
        
        //new screen
        let teamNameLabel = app.staticTexts[typedName]
        
        XCTAssert(teamNameLabel.exists)
    }
    

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
