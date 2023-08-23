import UIKit

class ViewController: UIViewController {
    
    var game: Game!
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Создаем генератор случайных чисел
        let generator = NumberGenerator(startValue: 1, endValue: 50)!
        game = Game(valueGenerator: generator, rounds: 5)
        // Обновляем данные о текущем значении загаданного числа
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    
    // MARK: - Взаимодействие View - Model
    
    @IBAction func checkNumbar(){
        game.currentRound.calculateScore(with: Int(slider.value))
        
        // проверка об оконьчании игры
        if game.isGameEnded{
            showAlertWith(score: game.score)
            game.restartGame()
        }else{
            game.startNewRound()
        }
        
        // Обновляем данные о текущем значении загаданного числа
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
        
    }
    
    // MARK: - Обновление View
    private func updateLabelWithSecretNumber(newText: String ) {
        label.text = newText
    }
    
    // Отображение всплывающего окна со счетом
    private func showAlertWith(score: Int){
        let alert = UIAlertController(title: "Игра окончина", message: "Вы заработали \(score) очков", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default))
        self.present(alert, animated: true)
    }
    
  
}

