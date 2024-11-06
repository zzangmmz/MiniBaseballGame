// Level1
import Foundation

struct MiniBaseballGame {
    private var inputNumbers = [Int]()
    private var answerNumbers = [Int]()
    
    mutating func makeAnswerNumbers() -> [Int] {
        return [Int.random(in: 1...9), Int.random(in: 1...9), Int.random(in: 1...9)]
    }
    
    func play() {
        
    }
}
