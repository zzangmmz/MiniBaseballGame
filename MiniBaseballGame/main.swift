// Level4
import Foundation

var game = MiniBaseballGame()
game.start()


struct MiniBaseballGame {
    private var inputNumber = [Character]()
    private var answerNumber = [Character]()
    
    func start() {
        while true {
            print("환영합니다! 원하시는 번호를 입력해주세요")
            print("1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기")
            let choice = readLine().map { Character($0) }
            
            switch choice {
            case "1":
                game.play()
            case "2":
                game.printLog()
            case "3":
                print("\n< 숫자 야구 게임을 종료합니다 >")
                return
            default:
                print("\n올바른 숫자를 입력해주세요!")
            }
        }
    }
    
    mutating func play() {
        print("\n< 게임을 시작합니다 >")
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
            numbers = [Int.random(in: 1...9), Int.random(in: 0...9), Int.random(in: 0...9)]
            if Set(numbers).count == 3 {
                break
            }
        }
        return numbers.map { Character(String($0)) }
    }
    
    func printResult() {
        if Set(inputNumber).count != answerNumber.count {
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
    
    func printLog() {
        
    }
}
