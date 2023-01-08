//
//  Node.swift
//  
//
//  Created by Kamaal M Farah on 26/12/2022.
//

import Foundation

public class Node<Value: Codable & Hashable>: Codable {
    public let value: Value
    public var next: Node<Value>?

    public init(value: Value, next: Node<Value>? = .none) {
        self.value = value
        self.next = next
    }

    public var array: [Value] {
        var items: [Value] = []
        var currentNode: Node<Value>? = self
        while currentNode != .none {
            items.append(currentNode!.value)
            currentNode = currentNode!.next
        }
        return items.reversed()
    }
}

extension Node: Equatable {
    public static func == (lhs: Node<Value>, rhs: Node<Value>) -> Bool {
        var leftNode: Node<Value>? = lhs
        var rightNode: Node<Value>? = rhs
        while leftNode != .none && rightNode != .none {
            if leftNode!.value != rightNode!.value {
                return false
            }
            leftNode = leftNode!.next
            rightNode = rightNode!.next
        }
        return leftNode?.value == rightNode?.value
    }
}
