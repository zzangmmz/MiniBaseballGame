final class LogDataManager {
    static let shared = LogDataManager()
    private var logs: [Int: Int]
    
    private init() {
        self.logs = [:]
    }
    
    // 기록 업데이트
    func updateLogs(_ rounds: Int, _ tries: Int) {
        self.logs[rounds] = tries
    }
    
    // 기록 보기
    func showLogs() {
        guard !logs.isEmpty else {
            print(ErrorDescription.emptyLog.description)
            return
        }
        logs.forEach { print(GuideDescription.log(rounds: $0.key, tries: $0.value).description) }
        print()
    }
}
