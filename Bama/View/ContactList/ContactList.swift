//
//  ContactList.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation
import SwiftUI


struct ContactList: View {
    @StateObject var vm = ViewModel.ContactList()
    
    var body: some View {
        List{
            ForEach(vm.users){user in
                HStack{
                    Text("\(user.name)")
                }
            }
        }
        .task {
            await vm.getUsers()
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Users")
        
    }
}
struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
