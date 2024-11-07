final class HintMaker {
    private var balls: Int
    private var strikes: Int
    
    init(_ inputNumber: [Character], _ answerNumber: [Character]) {
        self.balls = 0
        self.strikes = 0
        
        // 볼, 스트라이크 계산
        for i in 0 ..< answerNumber.count {
            if inputNumber[i] == answerNumber[i] {
                self.strikes += 1
            } else if answerNumber.contains(inputNumber[i]) {
                self.balls += 1
            }
        }
    }
    
    func printHints() {
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
}
