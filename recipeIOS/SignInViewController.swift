//
//  ViewController.swift
//  recipeIOS
//
//  Created by user on 19.09.2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var inputLogin:UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func auth(_ sender: Any) {
        guard !inputLogin.text!.isEmpty else {return showAlertDialog(message: "Введите логин")}
        guard !inputPassword.text!.isEmpty else {return showAlertDialog(message: "Введите пароль")}
        performSegue(withIdentifier: "auth", sender: nil)
    }
 
    // функция отображения алета, принимаетсообщение
    func showAlertDialog(message: String){
        //Отображение алерта с заголовком и текстом
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        // добавляем кнопку ОК
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        //Отображаем алерт
        self.present(alert, animated: true, completion: nil)
    }
    
}

