import SwiftUI

struct ContentView: View {
    let students = ["vitor", "rai", "fernandes"]
    @State private var chooseStudent = "rai"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Choose a Student", selection: $chooseStudent){
                    ForEach(students, id:\.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Choose a student: ")
            }
        }
    }


#Preview {
    ContentView()
}
