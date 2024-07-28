//
//  String.swift
//  
//
//  Created by Mia Koring on 28.07.24.
//

import Foundation

public extension String {
    var encapKey: EncapsulationKey? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return try? EncapsulationKey(keyBytes: data.byteArray)
    }
    
    var decapKey: DecapsulationKey? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return try? DecapsulationKey(keyBytes: data.byteArray)
    }
}
