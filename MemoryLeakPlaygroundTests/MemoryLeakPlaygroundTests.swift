import XCTest
import XCTAssertNoLeak
import MemoryLeakPlayground

class MemoryLeakPlaygroundTests: XCTestCase {
    func testExercise1_1() throws {
        XCTAssertNoLeak(Exercise.exercise1_1())
    }
    
    func testExercise1_2() throws {
        XCTAssertNoLeak(Exercise.exercise1_2())
    }
    
    func testExercise1_3() throws {
        XCTAssertNoLeak(Exercise.exercise1_3())
    }
    
    func testExercise2() throws {
        XCTAssertNoLeak(Exercise.exercise2())
    }

    func testExercise3() throws {
        XCTAssertNoLeak(Exercise.exercise3())
    }

    func testExercise4() throws {
        XCTAssertNoLeak(Exercise.exercise4())
    }

    func testExercise5() throws {
        XCTAssertNoLeak(Exercise.exercise5())
    }

    func testExercise6() throws {
        XCTAssertNoLeak(Exercise.exercise6())
    }

    func testExercise7() throws {
        XCTAssertNoLeak(Exercise.exercise7())
    }
}
