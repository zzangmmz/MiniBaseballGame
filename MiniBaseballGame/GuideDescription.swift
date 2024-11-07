enum GuideDescription: String {
    case greeting = "환영합니다! 원하시는 번호를 입력해주세요\n1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기"
    case start = "\n< 게임을 시작합니다 >"
    case input = "숫자를 입력하세요"
    case correct = "정답입니다!\n"
    case end = "\n< 숫자 야구 게임을 종료합니다 >"
    
    func printGuide() {
        print(self.rawValue)
    }
}
