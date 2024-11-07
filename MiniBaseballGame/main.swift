// Level4
import Foundation

var game = MiniBaseballGame()
game.start()


struct MiniBaseballGame {
    private var inputNumber = [Character]()
    private var answerNumber = [Character]()
    private var gameLogs = [Int: Int]()
    private var rounds = 0
    
    func start() {
        while true {
            print("환영합니다! 원하시는 번호를 입력해주세요")
            print("1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기")
            let choice = readLine()
            
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
        var tries = 0
        rounds += 1
        answerNumber = makeAnswerNumber()
        
        print("\n< 게임을 시작합니다 >")
        while true {
            tries += 1
            print("숫자를 입력하세요")
            
            guard let input = Int(readLine()!) else {
                print("올바르지 않은 입력값입니다\n")
                continue
            }
            inputNumber = String(input).map { $0 }
            
            if Set(inputNumber).count != answerNumber.count {
                print("올바르지 않은 입력값입니다\n")
                continue
            } else if inputNumber == answerNumber {
                gameLogs[rounds] = tries
                print("정답입니다!\n")
                break
            }
            printHints()
        }
    }
    
    func makeAnswerNumber() -> [Character] {
        var numbers = [Int]()
        while Set(numbers).count != 3 {
            numbers = [Int.random(in: 1...9), Int.random(in: 0...9), Int.random(in: 0...9)]
        }
        return numbers.map { Character(String($0)) }
    }
    
    func printHints() {
        var strikes = 0, balls = 0
        for i in 0 ..< answerNumber.count {
            if inputNumber[i] == answerNumber[i] {
                strikes += 1
            } else if answerNumber.contains(inputNumber[i]) {
                balls += 1
            }
        }
        
        if strikes != 0 && balls != 0 {
            print("\(strikes)스트라이크 \(balls)볼\n")
        } else if strikes == 0 && balls != 0 {
            print("\(balls)볼\n")
        } else if strikes != 0 && balls == 0 {
            print("\(strikes)스트라이크\n")
        } else {
            print("Nothing\n")
        }
    }
    
    func printLog() {
        if gameLogs.isEmpty {
            print("게임 기록이 없습니다.\n")
        } else {
            gameLogs.forEach {
                print("\($0.key)번째 게임 : 시도 횟수 - \($0.value)")
            }
            print()
        }
    }
}
