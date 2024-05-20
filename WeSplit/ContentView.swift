import SwiftUI

struct ContentView: View {
    @State private var tapCount = 1
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount*=2
        }
    }
}

#Preview {
    ContentView()
}
