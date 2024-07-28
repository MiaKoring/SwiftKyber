//
//  Kyber.swift
//  
//
//  Created by Mia Koring on 29.07.24.
//

public extension Kyber {
    func keyPair() -> KKeypair  {
        let (en, de) = self.GenerateKeyPair()
        return KKeypair (encap: en, decap: de)
    }
}
