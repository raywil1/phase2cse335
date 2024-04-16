//
//  ViewModel.swift
//  Phase2
//
//  Created by rwilangk on 4/16/24.
//

import Foundation
import CoreData

class AuthViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    private let viewContext: NSManagedObjectContext
    
    init(context: NSManagedObjectContext = PersistenceController.shared.container.viewContext) {
        self.viewContext = context
    }
    
    func signIn() {
        // Implement sign in logic here
        print("Signing in with username: \(email) and password: \(password)")
    }
    
    func createAccount() {
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: viewContext) as! User
        newUser.email = email
        newUser.password = password
        
        do {
            try viewContext.save()
            print("Account created successfully")
        } catch {
            print("Error creating account: \(error)")
        }
    }
}
