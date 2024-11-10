//
//  ValidationError.swift
//  Sample_Cafe
//
//  Created by Aung Kyaw Phyo on 03/11/2024.
//

import Foundation

enum ValidationErrors: String, Error {
    case emptyPhoneNo = "Empty phone number."
    case phoneNoNotMatched = "Phone number is incorrect."
    
    case emptyPassword = "Empty password."
    case passwordNotMatched = "Password is incorrect."
}

