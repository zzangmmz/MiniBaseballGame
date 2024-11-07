enum ErrorDescription: CustomStringConvertible {
    case wrongChoice
    case emptyLog
    case wrongInput
    
    var description: String {
        switch self {
        case .wrongChoice: return "\n올바른 숫자를 입력해주세요!"
        case .emptyLog: return "\n게임 기록이 없습니다.\n"
        case .wrongInput: return "올바르지 않은 입력값입니다\n"
        }
    }
}
