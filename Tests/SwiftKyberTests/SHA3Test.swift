//
//  SHA3Test.swift
//  
//
//  Created by Leif Ibsen on 05/10/2023.
//

import XCTest
@testable import SwiftKyber

// Test vectors from http://www.di-mgt.com.au/sha_testvectors.html
final class SHA3Test: XCTestCase {

    let s1 = Bytes("".utf8)
    let s2 = Bytes("abc".utf8)
    let s3 = Bytes("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq".utf8)
    let s4 = Bytes("abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu".utf8)
    let s5 = Bytes(repeating: 0x61, count: 1000000)

    func test256() throws {
        let md = SHA3_256()
        md.update(s1)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a")
        md.update(s2)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532")
        md.update(s3)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "41c0dba2a9d6240849100376a8235e2c82e1b9998a999e21db32dd97496d3376")
        md.update(s4)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "916f6061fe879741ca6469b43971dfdb28b1a32dc36cb3254e812be27aad1d18")
        md.update(s5)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "5c8875ae474a3634ba4fd55ec85bffd661f32aca75c6d699d0cdcb6c115891c1")
    }

    func test512() throws {
        let md = SHA3_512()
        md.update(s1)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26")
        md.update(s2)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "b751850b1a57168a5693cd924b6b096e08f621827444f70d884f5d0240d2712e10e116e9192af3c91a7ec57647e3934057340b4cf408d5a56592f8274eec53f0")
        md.update(s3)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "04a371e84ecfb5b8b77cb48610fca8182dd457ce6f326a0fd3d7ec2f1e91636dee691fbe0c985302ba1b0d8dc78c086346b533b49c030d99a27daf1139d6e75e")
        md.update(s4)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "afebb2ef542e6579c50cad06d2e578f9f8dd6881d7dc824d26360feebf18a4fa73e3261122948efcfd492e74e82e2189ed0fb440d187f382270cb455f21dd185")
        md.update(s5)
        XCTAssertEqual(Util.bytes2hex(md.digest()), "3c3a876da14034ab60627c077bb98f7e120a2a5370212dffb3385a18d4f38859ed311d0a9d5141ce9cc5c66ee689b266a8aa18ace8282a0e0db596c90b0a7b87")
    }

}
