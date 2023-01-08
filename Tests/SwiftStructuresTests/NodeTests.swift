//
//  NodeTests.swift
//  
//
//  Created by Kamaal M Farah on 26/12/2022.
//

import XCTest
import SwiftStructures

final class NodeTests: XCTestCase {
    func testEqual() {
        let cases = [
            (Node(value: 1), Node(value: 1))
        ]
        for (leftNode, rightNode) in cases {
            XCTAssertEqual(leftNode, rightNode)
        }
    }

    func testNotEqual() {
        let cases = [
            (Node(value: 1), Node(value: 1, next: Node(value: 2))),
            (Node(value: 1, next: Node(value: 2)), Node(value: 1)),
            (Node(value: 2), Node(value: 1))
        ]
        for (leftNode, rightNode) in cases {
            XCTAssertNotEqual(leftNode, rightNode)
        }
    }
}
