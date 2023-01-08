//
//  Stack.swift
//  
//
//  Created by Kamaal M Farah on 26/12/2022.
//

import Foundation

public struct Stack<Value: Codable & Hashable>: Equatable, Codable {
    private var top: Node<Value>?
    public private(set) var count: Int

    public init() {
        self.top = .none
        self.count = 0
    }

    public var isEmpty: Bool {
        count == 0
    }

    public var array: [Value] {
        top?.array ?? []
    }

    public func peek() -> Value? {
        top?.value
    }

    public mutating func push(_ item: Value) {
        let currentTop = top
        top = Node(value: item, next: currentTop)
        count += 1
    }

    @discardableResult
    public mutating func pop() -> Value? {
        let currentTop = top
        top = top?.next

        guard let removedItem = currentTop?.value else { return nil }

        count -= 1
        return removedItem
    }

    public static func fromArray(_ array: [Value]) -> Stack<Value> {
        var stack = Stack<Value>()
        for item in array {
            stack.push(item)
        }
        return stack
    }
}
