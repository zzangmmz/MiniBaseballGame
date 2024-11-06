//
//  main.swift
//  MiniBaseballGame
//
//  Created by 이명지 on 11/6/24.
//

// Level1
import Foundation

var game = MiniBaseballGame()
game.play()

struct MiniBaseballGame {
    private var inputNumbers = [Int]()
    private var answerNumbers = [Int]()
    
    mutating func makeAnswerNumbers() -> [Int] {
        return [Int.random(in: 1...9), Int.random(in: 1...9), Int.random(in: 1...9)]
    }
    
    mutating func play() {
        print("1에서 9까지의 서로 다른 임의의 수 3개를 입력하세요.")
        inputNumbers = readLine()!.split(separator: " ").map { (Int(String($0))!) }
        answerNumbers = makeAnswerNumbers()
        
        print(inputNumbers.contains(answerNumbers) ? "\n정답입니다!" : "\n오답입니다...")
        // 정답 확인용
        print("입력: \(inputNumbers)")
        print("정답: \(answerNumbers)")
    }
}
