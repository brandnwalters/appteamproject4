//
//  QuestionView.swift
//  project4
//
//  Created by Brandon Walters on 11/1/26.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    @State private var selectedAnswer: String = ""
    
    var body: some View {
        VStack(spacing: 20){
            Text(question.question)
                .bold()
                .foregroundStyle(.black)
                .frame(maxWidth: 400, minHeight: 80)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .border(Color.blue.opacity(0.5))
                    .cornerRadius(19)
                .padding(10)
            HStack {
                Button {
                    selectedAnswer = "A"
                } label: {
                    Text("A. \(question.A)")
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, minHeight: 80)
                        .background(Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .border(Color.blue.opacity(0.5))
                            .cornerRadius(19)
                        .padding(10)
                }
                
                Button {
                    selectedAnswer = "B"
                } label: {
                    Text("B. \(question.B)")
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, minHeight: 80)
                        .background(Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .border(Color.blue.opacity(0.5))
                            .cornerRadius(19)
                        .padding(10)
                }
            }
            HStack {
                
                Button {
                    selectedAnswer = "C"
                } label: {
                    Text("C. \(question.C)")
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, minHeight: 80)
                        .background(Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .border(Color.blue.opacity(0.5))
                            .cornerRadius(19)
                        .padding(10)
                }
                
                Button {
                    selectedAnswer = "D"
                } label: {
                    Text("D. \(question.D)")
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, minHeight: 80)
                        .background(Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .border(Color.blue.opacity(0.5))
                            .cornerRadius(19)
                        .padding(10)
                }
            }
        }
        .padding()
        if selectedAnswer != "" {
            Text(selectedAnswer == question.answer ? "Correct!" : "Try again!")
                .foregroundStyle(selectedAnswer == question.answer ? .green : .red)
                .bold()
        }
        Spacer()
    }
    

}
