//
//  LoginScreenViewController.swift
//  Sample_Cafe
//
//  Created by Aung Kyaw Phyo on 03/11/2024.
//

import UIKit

class LoginScreenViewController: SampleViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var textFieldCollection: [SampleTextField]!
    @IBOutlet var errorLabelCollection: [UILabel]!
    
    @IBOutlet weak var phoneNoTextField: SampleTextField!
    @IBOutlet weak var passwordTextField: SampleTextField!
    
    @IBOutlet weak var phoneNoErrorLabel: UILabel!
    @IBOutlet weak var passwordErrorLabel: UILabel!

    var input: LoginViewInputs?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultSetup()
    }
    
    // MARK: Additional Helpers
    private func defaultSetup() {
        textFieldSetup()
    }
    
    private func textFieldSetup() {
        textFieldCollection.forEach({
            $0.delegate = self
        })
    }
    
    // MARK: - User Interaction - Actions & Targets
    @IBAction func forgotPasswordBtnAction(_ sender: UIButton) {
        debugPrint("Pressed forgot btn")
        // TODO: Actions & Targets
    }
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        debugPrint("Pressed register btn")
        // TODO: Actions & Targets
    }
    
    @IBAction func loginBtnAction(_ sender: SampleButton) {
        if let isLogined = input?.clickedOnLoginButton(input: LoginInput(phoneNo: phoneNoTextField.inputValue, password: passwordTextField.inputValue)) {
            
        } else if phoneNoTextField.text == "9764374935" && passwordTextField.text == "password123" {
            baseRouter()
        } else if phoneNoTextField.text == "" {
            validationErrors(error: ValidationErrors.emptyPhoneNo)
        } else if passwordTextField.text == "" {
            validationErrors(error: ValidationErrors.emptyPassword)
        } else if phoneNoTextField.text != "9764374935" {
            validationErrors(error: ValidationErrors.phoneNoNotMatched)
        } else if passwordTextField.text != "password123"{
            validationErrors(error: ValidationErrors.phoneNoNotMatched)
        }
    }

}

// MARK: Extension
/**
 - Documentation for purpose of extension
 */

// MARK: - UITextFieldDelegate
extension LoginScreenViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let textField = textField as? SampleTextField, let index = textFieldCollection.firstIndex(of: textField) {
            errorLabelCollection[index].text = ""
        }
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let textField = textField as? SampleTextField, let index = textFieldCollection.firstIndex(of: textField) else {
            return true
        }
        guard index < textFieldCollection.count - 1 else {
            textFieldCollection[index].resignFirstResponder()
            return true
        }
        textFieldCollection[index + 1].becomeFirstResponder()
        return true
    }
    
}

extension LoginScreenViewController: LoginViewInputs {
    
    func validationErrors(error: ValidationErrors) {
        if error == .emptyPhoneNo {
            phoneNoErrorLabel.text = error.rawValue
        } else if error == .emptyPassword {
            passwordErrorLabel.text = error.rawValue
        } else if error == .phoneNoNotMatched {
            phoneNoErrorLabel.text = error.rawValue
        } else if error == .passwordNotMatched {
            passwordErrorLabel.text = error.rawValue
        }
    }
    
    func clickedOnLoginButton(input: LoginInput) {
        //
    }
    
    func baseRouter() {
        let vc = HomeScreenViewController.instantiate(storyboard: .baseRouter)
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
}
