//
//  AddContactView.swift
//  PracticaMoviles
//
//  Created by JEAN PIERRE HUAPAYA CHAVEZ on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct AddContactView: View {
    
    @State var showSheet = false
    @ObservedObject var contactViewMdel: ContactViewModel
    
    var body: some View {
        Button(action:{
            self.showSheet.toggle()
        }){
            Text("Add contact")
        }.sheet(isPresented: $showSheet, content:{
            RegisterView(contactViewModel: self.contactViewMdel, name: "", showSheet: self.$showSheet)
        })
    }
}
