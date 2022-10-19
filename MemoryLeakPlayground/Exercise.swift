import Foundation



public class Exercise1_1 {
    var value: Any?
    private let weight = Weight1()
}


public class Exercise1_2 {
    var value: Any?
    private let weight = Weight2()
}


public class Exercise1_3 {
    var value: Any?
    private let weight = Weight3()
}


public class Exercise2 {
    var value: Any?
}



public class Exercise3 {
    var value: Any?
    private let weight = Weight2()
}



public class Exercise4 {
    var value: Any?
    private let weight = Weight2()


    init() {
        let x = Indirect()
        x.value = { _ = self }
        self.value = x
    }
}



public class Exercise5_1: NSObject {
    var value: NSObject?
}



public class Indirect {
    var value: Any?
}



class EventHub {
    var observers = [EventHubObserver]()


    func add(observer: EventHubObserver) {
        self.observers.append(observer)
    }


    @discardableResult func removeObserver(observer: EventHubObserver) -> Bool {
        guard let index = self.observers.firstIndex(where: { o in o === observer }) else {
            return false
        }
        self.observers.remove(at: index)
        return true
    }


    static let shared = EventHub()
}



public protocol EventHubObserver: AnyObject {
    func didReceive()
}



public class Exercise6: EventHubObserver {
    private let weight = Weight2()


    init() {
        EventHub.shared.add(observer: self)
    }


    deinit {
        EventHub.shared.removeObserver(observer: self)
    }


    public func didReceive() {}
}



public class Exercise7 {
    var value: Any?
    private let weight = Weight2()

    public class Indirect: CustomReflectable {
        var value: Any?

        public var customMirror: Mirror {
            return Mirror(self, children: [])
        }
    }
}



public enum Exercise {
    @discardableResult public static func exercise1_1() -> Exercise1_1 {
        let x = Exercise1_1()
        x.value = x
        return x
    }


    @discardableResult public static func exercise1_2() -> Exercise1_2 {
        let x = Exercise1_2()
        x.value = x
        return x
    }


    @discardableResult public static func exercise1_3() -> Exercise1_3 {
        let x = Exercise1_3()
        x.value = x
        return x
    }


    @discardableResult public static func exercise2() -> Exercise2 {
        let x = Exercise2()
        var values = [Any]()
        values.append(Weight2() as Any)

        for _ in 0..<100 {
            values.append(Exercise2())
        }

        let y = Indirect()
        values.append(y)
        y.value = ["y": x]

        for _ in 0..<100 {
            values.append(Exercise2())
        }

        x.value = values
        return x
    }


    @discardableResult public static func exercise3() -> Exercise3 {
        let x = Exercise3()
        let y = Indirect()
        x.value = y
        var prev = y
        for _ in 0..<100 {
            let z = Indirect()
            prev.value = z
            prev = z
        }
        prev.value = x
        return x
    }


    @discardableResult public static func exercise4() -> Exercise4 {
        let x = Exercise4()
        return x
    }


    @discardableResult public static func exercise5() -> Exercise5_1 {
        let x = Exercise5_1()
        let y = Exercise5_2.init(x)
        x.value = y
        return x
    }


    @discardableResult public static func exercise6() -> Exercise6 {
        let x = Exercise6()
        return x
    }


    @discardableResult public static func exercise7() -> Exercise7.Indirect {
        let x = Exercise7()
        x.value = x
        let y = Exercise7.Indirect()
        y.value = x
        return y
    }
}
