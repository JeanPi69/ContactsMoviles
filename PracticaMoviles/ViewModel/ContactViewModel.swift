//
//  ContactViewModel.swift
//  PracticaMoviles
//
//  Created by JEAN PIERRE HUAPAYA CHAVEZ on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation
import CoreData
import SwiftUI

class ContactViewModel: ObservableObject{
    
    @Published var contactList = [Contact]()
    
    func saveContext(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    func getAllContacts(){
        do{
                self.contactList = try context.fetch(Contact.fetchRequest())
        }catch(let error){
            print(error)
        }
    }
    
    func addContact(name: String){
        let contact = Contact(context: context)
        contact.name = name
        self.contactList.append(contact)
        saveContext()
    }
    
    func deleteContact(index: Int){
        let current = contactList[index]
        context.delete(current)
        contactList.remove(at: index)
        saveContext()
    }
    
    init(){
        getAllContacts()
    }
    
}
