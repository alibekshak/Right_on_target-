//
//  ViewControllerFirstPage.swift
//  Right on target
//
//  Created by Apple on 23.08.2023.
//

import UIKit

class ViewControllerFirstPage: UIViewController {
    
    @IBAction func showNextScreen() {
        // загрузка сториборда
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // загрузка ViewController
        let viewController = storyboard.instantiateViewController(identifier: "ViewController") // в identifier указывается storyboar ID (который мы сами назначили)
        
        // отображение сцены
        self.present(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

}
