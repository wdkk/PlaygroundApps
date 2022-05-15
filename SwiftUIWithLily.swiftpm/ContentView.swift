import SwiftUI
import LilySwift

struct ContentView: View {
    var body: some View {   
        // Lily Playground Booksと同じことができる
        PGBookCanvas(
        design:{
            PGScreen.clearColor = .aliceBlue
            
            PGCircle()
            .color( .red )
        },
        update: {
        
        })
    }
}
