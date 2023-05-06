//
//  NavigatedView.swift
//  BamaTest
//
//  Created by SORA on 2020/10/17.
//

import SwiftUI

struct PostView: View {
    var post : Model.Post

    var body: some View {
        VStack{
            Text(post.title).bold()
            Spacer()
            Spacer()

            Text(post.body)

        }
            .navigationBarTitle("Post")
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Model.Post(userId: 1, id: 1, title: "", body: ""))
    }
}
