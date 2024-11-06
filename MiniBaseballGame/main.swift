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
        if inputNumber.contains("0") || Set(inputNumber).count != answerNumber.count {
            print("올바르지 않은 입력값입니다")
            return
        } else if inputNumber == answerNumber {
            print("정답입니다!")
            return
        }
        
        var strikes = 0, balls = 0
        for i in 0 ..< answerNumber.count {
            if inputNumber[i] == answerNumber[i] {
                strikes += 1
            } else if answerNumber.contains(inputNumber[i]) {
                balls += 1
            }
        }
        
        if strikes != 0 && balls != 0 {
            print("\(strikes)스트라이크 \(balls)볼")
        } else if strikes == 0 && balls != 0 {
            print("\(balls)볼")
        } else if strikes != 0 && balls == 0 {
            print("\(strikes)스트라이크")
        } else {
            print("Nothing")
        }
    }
}
