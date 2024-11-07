enum GuideDescription: CustomStringConvertible {
    case greeting
    case start
    case enterInput
    case correct
    case end
    
    var description: String {
        switch self {
        case .greeting: return "환영합니다! 원하시는 번호를 입력해주세요\n1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기"
        case .start: return "\n< 게임을 시작합니다 >"
        case .enterInput: return "숫자를 입력하세요"
        case .correct: return "정답입니다!\n"
        case .end: return "\n< 숫자 야구 게임을 종료합니다 >"
        }
    }
}
