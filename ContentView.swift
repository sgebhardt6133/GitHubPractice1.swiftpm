import SwiftUI

struct ContentView: View {
    @State var Int1 = 0
    @State var Int2 = 0
    @State var answer: Int = 0
    var body: some View {
        VStack {
            TextField("number", value: $Int1, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("number", value: $Int2, format: .number)
                .textFieldStyle(.roundedBorder)

            Button {
                answer = Int1 * Int2
                
            
            } label: {
                Text("Multiply")
            }
            Button {
            
            } label: {
                Text("Add")
            }
            Button {
            
            } label: {
                Text("Subtract")
            }
            Button {
            
            } label: {
                Text("Divide")
            }
            Text("\(answer)")
        }
    }
}
