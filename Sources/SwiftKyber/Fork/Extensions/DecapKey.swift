//
//  DecapKey.swift
//  
//
//  Created by Mia Koring on 28.07.24.
//

import Foundation

public extension DecapsulationKey {
    var data: Data {
        Data(self.keyBytes)
    }
    
    var stringRepresentation: String {
        self.data.base64EncodedString()
    }
}
