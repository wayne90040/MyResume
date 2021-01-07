//
//  SkillDetailView.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/9.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import SwiftUI


struct SkillDetailUIView: View {
    let title: String
    let desc: String
    let content: [String]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10.0) {
            Text(desc)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
            
            Text("相關經驗:")
                .font(.system(size: 20.0))
                .multilineTextAlignment(.leading)
            
            ForEach(content.indices){(index) in
                Text(self.content[index]).font(.system(size: 14.0))
            }
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .padding(.leading, 10)
        .padding(.trailing, 10)
        .navigationBarTitle(title)
    }
}

struct SkillDetailUIView_Previews: PreviewProvider {
    static var previews: some View {
        SkillDetailUIView(title: "Test", desc: "TestDesc", content: [""])
    }
}
