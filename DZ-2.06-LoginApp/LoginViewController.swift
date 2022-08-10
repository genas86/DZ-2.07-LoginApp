//
//  ViewController.swift
//  DZ-2.06-LoginApp
//
//  Created by Genas1986 on 09.08.2022.
//

import UIKit



class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomViewController else {return}
        welcomVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                massage: "Please, enter correct login and password",
                textFild: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", massage: "Your name is \(user) 🤪")
        : showAlert(title: "OOps!", massage: "Your password is \(password) 🤭")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    private func showAlert(title: String, massage: String, textFild: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textFild?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

