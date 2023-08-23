import Foundation

protocol GeneratorProtocol{
    func getNewSecretValue() -> Int
}


class NumberGenerator: GeneratorProtocol{
    private let startRangeValue: Int
    private let endRangeValue: Int
    init?(startValue: Int, endValue: Int) {
           guard startValue <= endValue else {
               return nil
           }
           startRangeValue = startValue
           endRangeValue = endValue
       }
       func getNewSecretValue() -> Int {
           (startRangeValue...endRangeValue).randomElement()!
       }
}
