import SwiftUI
import LilySwift

struct ContentView: View {
    var body: some View {
        VStack {
            Text( "Lily Playground with SwiftUI" )
            .padding()
            
            PGBookCanvas (
            design: {
                PGScreen.clearColor = .darkGrey
            },
            update: {
                for touch in PGScreen.touches {
                    for _ in 0 ..< 8 {
                        let speed = (2.0...4.0).randomize
                        let rad  = (0.0...2.0 * Double.pi).randomize
                            
                        PGAddBlurryCircle()
                            .color( LLColor( 0.4, 0.6, 0.95, 1.0 ) )
                            .position( touch.xy )
                            .deltaPosition( dx:speed * cos( rad ), dy: speed * sin( rad ) )
                            .scale( width:(5.0...40.0).randomize, height:(5.0...40.0).randomize )
                            .angle( .random )
                            .deltaAngle( degrees: (-2.0...2.0).randomize )
                            .life( 1.0 )
                            .deltaLife( -0.016 )
                            .alpha( 1.0 )
                            .deltaAlpha( -0.016 )
                    }
                }
            }
            )
        }
    }
}
