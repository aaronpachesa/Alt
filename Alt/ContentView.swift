//
//  ContentView.swift
//  Alt
//
//  Created by Aaron Pachesa on 5/27/20.
//  Copyright © 2020 Aaron Pachesa. All rights reserved.
//

import SwiftUI

struct UserQuestion: Identifiable {
    var id = UUID()
    var question: String
    var answer1: String
    var answer2: String
}

struct ContentView: View {
    
    @State private var selection = 0
    
    @State private var userQuestions = [
        
        UserQuestion(question: "Do you want cake?", answer1: "Yes", answer2: "No"),
        UserQuestion(question: "What type of cake do you like?", answer1: "Lemon", answer2: "Vanilla")
    ]
    
    var body: some View {
        TabView(selection: $selection){
            NavigationView {
                
                List {
                    ForEach(userQuestions) { question in
                        NavigationLink(destination: DetailView(userQuestionDetails: question)) {
                            Text(question.question)
                            
                        }
                    }
                }.navigationBarTitle("User Questions")
                
            }
                .tabItem {
                    VStack {
                        Image(systemName: "envelope")
                        Text("Questions")
                    }
                }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
