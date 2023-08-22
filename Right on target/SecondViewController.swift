//
//  SecondViewController.swift
//  Right on target
//
//  Created by Apple on 22.08.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print("loadView SecondViewController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad SecondViewController")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear SecondViewController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear SecondViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    print("viewDidDisappear SecondViewController")
        }
    
    @IBAction func hideCurrentScene() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
