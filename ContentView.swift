import SwiftUI

struct ContentView: View {
    @State var Int1 = 0
    @State var Int2 = 0
    @State var answer: Int = 0
    var body: some View {
        VStack {
            TextField("number", value: $Int1, format: .number)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding()
            TextField("number", value: $Int2, format: .number)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                Button {
                    answer = Int1 * Int2
                } label: {
                    Text("Multiply")
                }
                Spacer()
                    .frame(width: 25)
                Button {
                    answer = Int1 + Int2
                } label: {
                    Text("Add")
                }
            }
            .padding(EdgeInsets(top: 15, leading: 5, bottom: 5, trailing: 5))
            HStack {
                Button {
                    answer = Int1 - Int2
                } label: {
                    Text("Subtract")
                }
                Spacer()
                    .frame(width: 25)
                Button {
                    answer = Int1/Int2
                } label: {
                    Text("Divide")
                }
            }
            .padding(EdgeInsets(top: 5, leading: 5, bottom: 10, trailing: 5))
            Text("\(answer)")
                .font(.title2)
        }
    }
}
