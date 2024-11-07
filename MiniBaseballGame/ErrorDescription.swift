enum ErrorDescription: String {
    case wrongChoice = "\n올바른 숫자를 입력해주세요!"
    case emptyLog = "\n게임 기록이 없습니다.\n"
    case wrongInput = "올바르지 않은 입력값입니다\n"
    
    func printError() {
        print(self.rawValue)
    }
}
