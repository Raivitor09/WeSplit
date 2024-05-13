import SwiftUI

struct ContentView: View {
    var body: some View {
        let strings = Bundle.main.path(forResource: "Strings", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: strings!)
        
        let helloString = dict?["hello-string"] as! String
        let introductionString = String(format: (dict?["introduction-string"] as! String), "Vitor")
        let descriptionString = dict?["description-string"] as! String
        
        return VStack(spacing: 10) {
            Text(helloString)
                .font(.title.bold())
            Text(descriptionString)
                .font(.body)
            Text(introductionString)
                .font(.caption)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
