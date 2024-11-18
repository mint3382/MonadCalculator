//
//  Calculatable.swift
//  MonadCalculator
//
//  Created by minsong kim on 11/18/24.
//

import UIKit

protocol Calculatable {
    var leftNumber: String? { get }
    var rightNumber: String? { get }
    var inputOperator: Operator? { get }
}

extension Calculatable {
    func calculate() -> String {
        guard let inputOperator else {
            return "ERROR"
        }
        
        switch inputOperator {
        case .plus:
            return plus()
        case .minus:
            return minus()
        case .multiple:
            return multiple()
        case .divide:
            return divide()
        }
    }
    
    func plus() -> String {
        guard let leftTerm = Int(leftNumber ?? ""),
                let rightTerm = Int(rightNumber ?? "") else {
            return "ERROR"
        }
        
        let result = leftTerm + rightTerm
        return String(result)
    }
    
    func minus() -> String {
        guard let leftTerm = Int(leftNumber ?? ""),
                let rightTerm = Int(rightNumber ?? "") else {
            return "ERROR"
        }
        
        let result = leftTerm - rightTerm
        return String(result)
    }
    
    func multiple() -> String {
        guard let leftTerm = Int(leftNumber ?? ""),
                let rightTerm = Int(rightNumber ?? "") else {
            return "ERROR"
        }
        
        let result = leftTerm * rightTerm
        return String(result)
    }
    
    func divide() -> String {
        guard let leftTerm = Int(leftNumber ?? ""),
                let rightTerm = Int(rightNumber ?? "") else {
            return "ERROR"
        }
        
        guard rightTerm != 0 else {
            return "NONE"
        }
        
        let result = leftTerm / rightTerm
        return String(result)
    }
}
