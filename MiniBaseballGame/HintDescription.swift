enum HintDescription: CustomStringConvertible {
    case onlyBall(ball: Int)
    case onlyStrike(strike: Int)
    case both(ball: Int, strike: Int)
    case nothing
    
    var description: String {
        switch self {
        case .onlyBall(let ball): return "\(ball)볼\n"
        case .onlyStrike(let strike): return "\(strike)스트라이크\n"
        case .both(let ball, let strike): return "\(strike)스트라이크 \(ball)볼\n"
        case .nothing: return "Nothing"
        }
    }
}
