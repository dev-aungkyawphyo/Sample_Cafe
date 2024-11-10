//
//  LoginScreenProtocols.swift
//  Sample_Cafe
//
//  Created by Aung Kyaw Phyo on 03/11/2024.
//

import Foundation

protocol LoginViewInputs: AnyObject {
    func validationErrors(error: ValidationErrors)
    func clickedOnLoginButton(input: LoginInput)
}

