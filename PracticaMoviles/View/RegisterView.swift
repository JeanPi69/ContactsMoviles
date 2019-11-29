//
//  RegisterView.swift
//  PracticaMoviles
//
//  Created by JEAN PIERRE HUAPAYA CHAVEZ on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    
    @ObservedObject var contactViewModel: ContactViewModel
    @State var name: String
    @Binding var showSheet: Bool
    
    var body: some View {
        VStack{
            TextField("Nombre", text: $name)
            Button(action: {
                self.contactViewModel.addContact(name: self.name)
//                self.contactViewModel.getAllContacts()
                self.showSheet.toggle()
            }){
                Text("Add Contact")
            }
        }
    }
}
