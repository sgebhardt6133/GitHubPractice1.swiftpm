import SwiftUI

struct ContentView: View {
    @State var Int1 = 0
    @State var Int2 = 0
    @State var answer: Int = 0
    var body: some View {
        VStack {
            TextField("number", value: $Int1, format: .number)
            TextField("number", value: $Int2, format: .number)
            Button {
                
            } label: {
                Text("Multiply")
            }
            Text("\(answer)")
        }
    }
}
