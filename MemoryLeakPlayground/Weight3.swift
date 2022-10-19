import Foundation


class Weight1 {
    private static let origin : [UInt64] = Array(repeating: 0, count: 1024*1024)

    private var data = [[UInt64]]()

    init() {
        for _ in 0..<1024 {
            data.append(Weight1.origin)
        }
    }
}

class Weight3 {
    private let data = Data(count: 5*1024*1024)
}
