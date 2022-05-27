import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("Exercise")) {
                Button {
                    Exercise.exercise1()
                } label: {
                    Text("Exercise 1")
                }
                Button {
                    Exercise.exercise2()
                } label: {
                    Text("Exercise 2")
                }
                Button {
                    Exercise.exercise3()
                } label: {
                    Text("Exercise 3")
                }
                Button {
                    Exercise.exercise4()
                } label: {
                    Text("Exercise 4")
                }
                Button {
                    Exercise.exercise5()
                } label: {
                    Text("Exercise 5")
                }
                Button {
                    Exercise.exercise6()
                } label: {
                    Text("Exercise 6")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
