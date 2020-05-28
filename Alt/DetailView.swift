//
//  DetailView.swift
//  Alt
//
//  Created by Aaron Pachesa on 5/27/20.
//  Copyright © 2020 Aaron Pachesa. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var userQuestionDetails: UserQuestion
    
    @State private var answerIndex = Int()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            
            Text(userQuestionDetails.question)
            
            Picker(selection: $answerIndex, label: Text(""), content: {
                Text("\(userQuestionDetails.answer1)").tag(0)
                Text("\(userQuestionDetails.answer2)").tag(1)
            })
                .labelsHidden()
            
            Button(action: {

                self.presentationMode.wrappedValue.dismiss()

            }) {
                Text("Confirm")
            }
            
        }
    }
}
