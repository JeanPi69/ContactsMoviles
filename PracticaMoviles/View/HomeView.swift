//
//  HomeView.swift
//  PracticaMoviles
//
//  Created by JEAN PIERRE HUAPAYA CHAVEZ on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var contactViewModel: ContactViewModel
    
    var body: some View {
        TabView{
            AddContactView(contactViewMdel: contactViewModel).tabItem(){
                Text("Add contact")
                Image(systemName: "plus")
            }
            ListContactView().tabItem(){
                Text("List Contact")
                Image(systemName: "person")
            }
        }
    }
}
