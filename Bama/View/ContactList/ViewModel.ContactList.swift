//
//  ViewModel.ContactList.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation

extension ViewModel {
    
    
    @MainActor
    class ContactList: ObservableObject {
           
        @Published var users: [Model.Contact] = []
        @Published var errorMessage = ""
        @Published var hasError = false
        

        func getUsers() async {
            guard let data = try?  await  APIService().getUsers() else {
                self.users = []
                self.hasError = true
                self.errorMessage  = "Server Error"
                return
            }
            
            self.users = data
            
        }
    }
    
}
