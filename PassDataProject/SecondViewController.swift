//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Сергей Александров on 15.09.2023.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    
    @IBOutlet weak var label: UILabel!
    // функция при загрузке контроллера
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else {return}
        label.text = "Hello, \(login)"
    }
    // переход на 1 контроллер
    @IBAction func goBackTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    

}
