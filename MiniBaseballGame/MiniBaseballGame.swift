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
            print(GuideDescription.greeting.description)
            let choice = readLine()
            
            switch choice {
            case "1":
                game.play()
            case "2":
                LogDataManager.shared.printLogs()
            case "3":
                print(GuideDescription.end.description)
                return
            default:
                print(ErrorDescription.wrongChoice.description)
            }
        }
    }
    
    func play() {
        var tries = 0
        rounds += 1
        answerNumber = makeAnswerNumber()
        
        print(GuideDescription.start.description)
        while true {
            tries += 1
            print(GuideDescription.enterInput.description)
            
            // 정수가 아닌 값이 입력됐는지 검사
            guard let input = Int(readLine()!) else {
                print(ErrorDescription.wrongInput.description)
                continue
            }
            inputNumber = String(input).map { $0 }
            
            // 자릿수 맞는지 검사
            if Set(inputNumber).count != answerNumber.count {
                print(ErrorDescription.wrongInput.description)
                continue
            }
            // 정답 맞춘 경우
            else if inputNumber == answerNumber {
                LogDataManager.shared.updateLogs(rounds, tries)
                print(GuideDescription.correct.description)
                break
            }
            
            // 힌트 출력
            let hint = HintMaker(inputNumber, answerNumber)
            hint.printHints()
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
}
