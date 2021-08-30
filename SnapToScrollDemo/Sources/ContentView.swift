import SnapToScroll
import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    
    @State var items = [("one", 1), ("two", 2), ("three", 3), ("four", 4), ("five", 5), ("six", 6)]
    
    
    var body: some View {
        VStack {
            
            HStackSnap(leadingOffset: 16) {
                
                ForEach(items, id: \.1) { item in
                    
                    Text(item.0)
                        .font(.largeTitle)
                        .padding(16)
                        .overlay(GeometryReaderOverlay(id: item.1))
                        .onTapGesture {
                            
                            print(item.0)
                        }
                }
            }
//            HStackSnap(snapLocation: .center) {
//                
//                ForEach(items, id: \.1) { item in
//                    
//                    Text(item.0)
//                        .font(.largeTitle)
//                        .padding()
//                        .overlay(GeometryReaderOverlay(id: item.1))
//                }
//            }
        }
        
        /// SnapHStack {
        ///      customForEach { item in
        ///
        ///      }
        ///      }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
