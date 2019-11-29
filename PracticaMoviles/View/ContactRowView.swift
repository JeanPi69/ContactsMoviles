//
//  ContactRowView.swift
//  PracticaMoviles
//
//  Created by JEAN PIERRE HUAPAYA CHAVEZ on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct ContactRowView: View {
    
    @ObservedObject var contactViewModel: ContactViewModel
    
    var contact: Contact?
    
    
    var body: some View {
        HStack{
            Text(contact!.name!)
        }
    }
}
