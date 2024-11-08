final class HintMaker {
    private var balls: Int
    private var strikes: Int
    private var hint: HintDescription
    
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
        
        if strikes != 0 && balls != 0 {
            self.hint = .both(ball: balls, strike: strikes)
        } else if strikes == 0 && balls != 0 {
            self.hint = .onlyBall(ball: balls)
        } else if strikes != 0 && balls == 0 {
            self.hint = .onlyStrike(strike: strikes)
        } else {
            self.hint = .nothing
        }
    }
    
    func printHint() {
        print(self.hint.description)
    }
}
