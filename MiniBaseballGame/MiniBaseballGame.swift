final class MiniBaseballGame {
    private var inputNumber: [Character]
    private var answerNumber: [Character]
    private var gameLogs: [Int: Int]
    private var rounds: Int
    
    init() {
        self.inputNumber = []
        self.answerNumber = []
        self.gameLogs = [:]
        self.rounds = 0
    }
    
    func start() {
        while true {
            GuideDescription.greeting.printGuide()
            let choice = readLine()
            
            switch choice {
            case "1":
                game.play()
            case "2":
                LogDataManager.shared.showLogs()
            case "3":
                GuideDescription.end.printGuide()
                return
            default:
                ErrorDescription.wrongChoice.printError()
            }
        }
    }
    
    func play() {
        var tries = 0
        rounds += 1
        answerNumber = makeAnswerNumber()
        let ballAndStrike = BallAndStrike()
        
        GuideDescription.start.printGuide()
        while true {
            tries += 1
            GuideDescription.input.printGuide()
            
            // 정수가 아닌 값이 입력됐는지 검사
            guard let input = Int(readLine()!) else {
                ErrorDescription.wrongInput.printError()
                continue
            }
            inputNumber = String(input).map { $0 }
            
            // 자릿수 맞는지 검사
            if Set(inputNumber).count != answerNumber.count {
                ErrorDescription.wrongInput.printError()
                continue
            } else if inputNumber == answerNumber {
                LogDataManager.shared.updateLogs(rounds, tries)
                GuideDescription.correct.printGuide()
                break
            }
            ballAndStrike.printHints(inputNumber, answerNumber)
        }
    }
    
    // 랜덤 3자리 숫자 생성 함수
    func makeAnswerNumber() -> [Character] {
        var numbers = [Int]()
        while Set(numbers).count != 3 {
            numbers = [Int.random(in: 1...9), Int.random(in: 0...9), Int.random(in: 0...9)]
        }
        return numbers.map { Character(String($0)) }
    }
    
//    // 볼, 스트라이크 힌트 출력 함수
//    func printHints() {
//        var strikes = 0, balls = 0
//        for i in 0 ..< answerNumber.count {
//            if inputNumber[i] == answerNumber[i] {
//                strikes += 1
//            } else if answerNumber.contains(inputNumber[i]) {
//                balls += 1
//            }
//        }
//        
//        if strikes != 0 && balls != 0 {
//            print("\(strikes)스트라이크 \(balls)볼\n")
//        } else if strikes == 0 && balls != 0 {
//            print("\(balls)볼\n")
//        } else if strikes != 0 && balls == 0 {
//            print("\(strikes)스트라이크\n")
//        } else {
//            print("Nothing\n")
//        }
//    }
}
