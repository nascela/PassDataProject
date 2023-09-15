//
//  ViewController.swift
//  PassDataProject
//
//  Created by Сергей Александров on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var paswordTF: UITextField!
    
    // переход на 2-ой контроллер при нажатии на кнопку
    @IBAction func loginTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    // передача в 2-ой контроллер текста из loginTF
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // ссыллка на контроллер
        guard let dvc = segue.destination as? SecondViewController else {return}
        // передаем по ссылке занчение из loginTF в переменную login находящуюся во 2-ом контроллере
        dvc.login = loginTF.text
    }
    
    
    //закрытие клавиатуры по нажатию на дисплей
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

