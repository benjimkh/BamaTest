

import SwiftUI

struct ContentView: View {
    
    private enum Item: Int, Tabbable {
        case first = 0
        case second
        
        var icon: String {
            switch self {
                case .first: return "message"
                case .second: return "person"
            }
        }
        
        var title: String {
            switch self {
                case .first: return "First"
                case .second: return "Third"
            }
        }
    }
    
    @State private var selection: Item = .first
    @State private var visibility: TabBarVisibility = .visible
    
    var body: some View {
        NavigationView {
           
            TabBar(selection: $selection, visibility: $visibility) {
                PostList()
                    .tabItem(for: Item.first)

                ContactList()
                    .tabItem(for: Item.second)
            }
            .tabBar(style: CustomTabBarStyle())
            .tabItem(style: CustomTabItemStyle())
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
