//
//  ContentView.swift
//  project4
//
//  Created by Brandon Walters on 11/1/26.
//

import SwiftUI

struct Question: Codable {
    let question: String
    let A: String
    let B: String
    let C: String
    let D: String
    let answer: String
}

struct ContentView: View {
    @State private var questions: [Question] = []
    
    var body: some View {
        NavigationStack {
            List(questions, id: \.question) { question in
                NavigationLink {
                    QuestionView(question: question)
                } label: {
                    Text(question.question)
                }
            }
            .navigationTitle("Trivvey")
            .toolbar {
                Button {
                    questions.shuffle()
                } label : {
                    Image(systemName: "shuffle")
                }
            }
        }
        
        .onAppear {
            let url: URL = Bundle.main.url(forResource: "questions", withExtension: "json")!
            let data = try! Data(contentsOf: url)
            questions = try! JSONDecoder().decode([Question].self, from: data)
        }
    }
}
    
    #Preview {
        ContentView()
    }
