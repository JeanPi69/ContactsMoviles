//
//  ListContactView.swift
//  PracticaMoviles
//
//  Created by JEAN PIERRE HUAPAYA CHAVEZ on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct ListContactView: View {
    
    @EnvironmentObject var contactViewModel: ContactViewModel
    @State var contacts = [Contact]()
    
    var body: some View {
        VStack{
            List{
                ForEach(self.contactViewModel.contactList, id: \.self){ contact in
                    ContactRowView(contactViewModel: self.contactViewModel, contact: contact)
                }.onDelete(perform: removeContact)
            }
            
        }
    }

    
    func removeContact(at offsets: IndexSet) {
        for index in offsets {
            contactViewModel.deleteContact(index: index)
        }
    }
}
