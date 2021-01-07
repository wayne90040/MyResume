//
//  SkillsUIView.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/8.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import SwiftUI

struct SkillsUIView: View {
    
    let languageSkills = [
        Skill(title: "中文", status: "精通 | 母語", desc: nil, content: nil),
        Skill(title: "英文", status: "中 | TOEIC: 625", desc: nil, content: nil)
    ]

    let computerSkills = [
        Skill(title: "Python", status: "自學", desc: "主要都是自學，有爭取到Tibame-零基礎Python入門與資料科學的相關課程，但仍有許多不足之處",
              content: ["爬蟲 Ex: 抓取 Dcard 的文章、圖片", "利用 Selenium 來操作網站 Ex: 自動投票"]),
        Skill(title: "Swift", status: "自學", desc: "努力學習中，可獨立完成簡單的App",
              content: ["第一次接觸是用在AllForOne專題上", "有自己接過一個開發高爾夫球計分的App"]),
        Skill(title: "Django", status: "自學", desc: "努力學習中，可獨立撰寫簡單的API",
              content: ["用於開發專題AllForOne的API", "有實做簡單LineBot相關經驗"]),
        Skill(title: "Java", status: "一學期的課程", desc: "除了在校課程外，很少接觸，最近會拿來寫一些較簡單的 Leetcode 題目", content: ["課堂接觸"]),
        Skill(title: "Android Studio", status: "一學期的課程", desc: "完全只有上課時才會接觸。", content: ["課堂接觸"]),
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Language")) {
                    ForEach(languageSkills){ skill in
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text(skill.title).font(.headline)
                            Text(skill.status).font(.footnote).foregroundColor(.gray)
                        }
                    }
                }
                
               
                Section(header: Text("Computer")){
                    ForEach(computerSkills){ skill in
                        
                        NavigationLink(destination: SkillDetailUIView(title: skill.title, desc: skill.desc ?? "", content: skill.content ?? [""])){
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text(skill.title).font(.headline)
                                Text(skill.status).font(.footnote).foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Skills")
        }
        
    }
}

struct SkillsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsUIView()
    }
}
