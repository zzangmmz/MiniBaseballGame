// Level2
import Foundation

var game = MiniBaseballGame()
game.play()

struct MiniBaseballGame {
    private var inputNumber = [Character]()
    private var answerNumber = [Character]()
    
    mutating func play() {
        print("숫자를 입력하세요")
        guard let input = Int(readLine()!) else {
            print("올바르지 않은 입력값입니다")
            return
        }
        inputNumber = String(input).map { $0 }
        answerNumber = makeAnswerNumber()
        printResult()
    }
    
    func makeAnswerNumber() -> [Character] {
        var numbers = [Int]()
        while true {
            numbers = [Int.random(in: 1...9), Int.random(in: 1...9), Int.random(in: 1...9)]
            if Set(numbers).count == 3 {
                break
            }
        }
        return numbers.map { Character(String($0)) }
    }
    
    func printResult() {
        
    }
}
