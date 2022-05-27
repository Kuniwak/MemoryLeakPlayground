import Foundation



class Exercise1 {
    var value: Any?
}



class Exercise2 {
    var value: Any?
}



class Exercise3 {
    var value: Any?
}



class Exercise4 {
    var value: Any?


    init() {
        let x = Indirect()
        x.value = { _ = self }
        self.value = x
    }
}



class Exercise5_1: NSObject {
    var value: NSObject?
}



class Indirect {
    var value: Any?
}



class EventHub {
    var observers = [EventHubObserver]()


    func add(observer: EventHubObserver) {
        self.observers.append(observer)
    }


    func removeObserver(observer: EventHubObserver) -> Bool {
        guard let index = self.observers.firstIndex(where: { o in o === observer }) else {
            return false
        }
        self.observers.remove(at: index)
        return true
    }


    static let shared = EventHub()
}



protocol EventHubObserver: AnyObject {
    func didReceive()
}



class Exercise6: EventHubObserver {
    init() {
        EventHub.shared.add(observer: self)
    }


    func didReceive() {}
}



enum Exercise {
    static func exercise1() {
        let x = Exercise1()
        x.value = x
    }


    static func exercise2() {
        let x = Exercise2()
        let y = Indirect()
        x.value = y
        var prev = y
        for _ in 0..<100 {
            let z = Indirect()
            prev.value = z
            prev = z
        }
        prev.value = x
    }


    static func exercise3() {
        let x = Exercise3()
        var values = [Any]()

        for _ in 0..<10 {
            values.append(Exercise3())
        }

        let y = Indirect()
        values.append(y)
        y.value = ["y": x]

        for _ in 0..<10 {
            values.append(Exercise3())
        }

        x.value = values
    }


    static func exercise4() {
        let x = Exercise4()
        _ = x
    }


    static func exercise5() {
        let x = Exercise5_1()
        let y = Exercise5_2.init(x)
        x.value = y
    }


    static func exercise6() {
        let x = Exercise6()
        _ = x
    }
}