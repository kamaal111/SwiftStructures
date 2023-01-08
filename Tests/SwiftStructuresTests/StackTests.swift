//
//  StackTests.swift
//  
//
//  Created by Kamaal M Farah on 26/12/2022.
//

import XCTest
import SwiftStructures

final class StackTests: XCTestCase {
    func testToArray() {
        let expectedArray = [0, 1, 2]
        let stack = Stack.fromArray(expectedArray)
        XCTAssertEqual(stack.array, expectedArray)
        XCTAssertFalse(stack.isEmpty)
    }

    func testToArrayFromEmptyArray() {
        let expectedArray: [Int] = []
        let stack = Stack.fromArray(expectedArray)
        XCTAssertEqual(stack.array, expectedArray)
        XCTAssert(stack.isEmpty)
    }

    func testFromArray() {
        let stack = Stack.fromArray([0, 1, 2])
        XCTAssertEqual(stack.count, 3)
        XCTAssertEqual(stack.peek(), 2)
    }

    func testCount() {
        var stack = Stack<Int>()
        XCTAssertEqual(stack.count, 0)
        XCTAssertNil(stack.peek())
        stack.push(1)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.peek(), 1)
        stack.push(2)
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(stack.peek(), 2)
        var poppedItem = stack.pop()
        XCTAssertEqual(poppedItem, 2)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.peek(), 1)
        poppedItem = stack.pop()
        XCTAssertEqual(poppedItem, 1)
        XCTAssertEqual(stack.count, 0)
        XCTAssertNil(stack.peek())
        poppedItem = stack.pop()
        XCTAssertNil(poppedItem)
        XCTAssertEqual(stack.count, 0)
        XCTAssertNil(stack.peek())
    }
}
