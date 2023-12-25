//
//  CommentsView.swift
//  InstagramSwiftUITutorial
//
//  Created by SeokKi Kwon on 2023/12/25.
//

import SwiftUI

struct CommentsView: View {
    @State var commentText = ""
    var body: some View {
        VStack {
            // comment cells
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 24) {
                    ForEach(0..<10) { _ in
                            CommentCell()
                    
                    }
                }
            }.padding(.top)
            CustomInputView(inputText: $commentText, action: uploadComment)
        }
    }
    
    func uploadComment() {
        
    }
}

#Preview {
    CommentsView()
}