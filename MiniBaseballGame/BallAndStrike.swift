final class BallAndStrike {
    private var balls: Int
    private var strikes: Int
    
    init() {
        self.balls = 0
        self.strikes = 0
    }
    
    func printHints(_ inputNumber: [Character], _ answerNumber: [Character]) {
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
}
