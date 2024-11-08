final class LogDataManager {
    static let shared = LogDataManager()
    private var logs: [Int]
    
    private init() {
        self.logs = []
    }
    
    // 기록 업데이트
    func updateLogs(_ tries: Int) {
        self.logs.append(tries)
    }
    
    // 기록 보기
    func printLogs() {
        guard !logs.isEmpty else {
            print(ErrorDescription.emptyLog.description)
            return
        }
        logs.enumerated().forEach { print(GuideDescription.log(rounds: $0+1, tries: $1).description) }
        print()
    }
}
