//
//  ViewController.swift
//  Right on target
//
//  Created by Apple on 21.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
   
    var number: Int = 0
    var round: Int = 1
    var points: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
        self.number = Int.random(in: 1...5)
        self.label.text = String(self.number)
    }
    
    @IBAction func checkNumbar(){
            // получаем значение на слайдере
            let numSlider = Int(self.slider.value.rounded())
            
            if numSlider > self.number {
                self.points += 50 - numSlider + self.number
            }else if numSlider < self.number{
                self.points += 50 - self.number + numSlider
            }else{
                self.points += 50
            }
            if self.round == 5{
                let alert = UIAlertController(title: "Игра окончена", message: "Вы набрали \(self.points) очков", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                self.round = 1
                self.points = 0
            }else{
                self.round += 1
            }
        // генерируем случайное число
        self.number = Int.random(in: 1...50)
       
        // передаем значение случайного числа в label
        self.label.text = String(self.number)
        
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
        
        let versionLabel = UILabel(frame: CGRect(x: 20, y: 10, width: 200,
                                                 height: 20))
        versionLabel.text = "Version 1.1"
        self.view.addSubview(versionLabel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    // свойство для хранения View Controller
    
    lazy var secondViewController: SecondViewController = getSecondViewController()
    
    private func getSecondViewController() -> SecondViewController{
        // загрузка Storyboard
        let storyboarde = UIStoryboard(name: "Main", bundle: nil)
        // загрузка View Controller и его сцены со Storyboard
        let viewController = storyboarde.instantiateViewController(identifier: "SecondViewController")
        return viewController as! SecondViewController
    }
    
    @IBAction func showNextScreen(){
        // отображение сцены на экране
        self.present(secondViewController, animated: true, completion: nil)
    }
    
}

