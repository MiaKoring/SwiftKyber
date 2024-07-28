//
//  Untitled.swift
//  SwiftKyber
//
//  Created by Mia Koring on 28.07.24.
//

import XCTest
@testable import SwiftKyber

class ExtensionTest: XCTestCase {
    func testFork() {
        let pair = Kyber.K1024.keyPair()
        
        let string = pair.encap.stringRepresentation
        let string1 = pair.decap.stringRepresentation
        
        guard let encapKey = string.encapKey else {
            XCTFail("EncapKey could not be reextracted")
            return
        }
        guard let decapKey = string1.decapKey else {
            XCTFail("DecapKey could not be reextracted")
            return
        }
        
        XCTAssertTrue(encapKey == pair.encap)
        XCTAssertTrue(decapKey == pair.decap)
    }
    
}
