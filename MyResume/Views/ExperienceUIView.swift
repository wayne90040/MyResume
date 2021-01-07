//
//  ExperienceUIView.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/3.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import SwiftUI


struct ExperienceUIView: View {
    
    let experiences = [
        Experience(job: "大戶屋", postion: "外場服務生", startDate: "Sep 2018", endDate: "Jul 2019", content: ["負責送餐、帶位、點餐等相關事宜", "完成主管交代事項"], desc: "", img: "ootoya"),
        Experience(job: "水巷茶弄", postion: "外送員｜吧檯人員", startDate: "May 2018", endDate: "Sep 2018", content: ["結帳、外送等店內相關事宜", "完成主管交代事項"], desc: "", img: "drinks"),
        Experience(job: "溫野菜", postion: "代理店長｜內外場服務生", startDate: "Mar 2017", endDate: "Mar 2018", content: ["安排人員當天的崗位", "協助盤點、結帳等相關作業"], desc: "", img: "hotpot"),
        Experience(job: "好樂迪", postion: "外場服務生", startDate: "Jul 2016", endDate: "Sep 2016", content: ["負責送餐、帶包、清潔包廂", "完成主管交代事項"], desc: "", img: "holiday"),
        Experience(job: "廟口牛排", postion: "外場服務生", startDate: "Jun 2016", endDate: "Oct 2016", content: ["負責送餐、帶位、點餐等相關事宜", "完成主管交代事項"], desc: "", img: "mksteak")
    ]

    let practices = [
        Experience(job: "精誠資訊股份有限公司", postion: "自動化測試工程師", startDate: "Oct 2019", endDate: "Sep 2020", content: ["Tool: Micro Focus Unified Functional Testing", "Languages: VBScript"], desc: "", img: "systex"),
        Experience(job: "高爾夫球計分APP開發", postion: "iOS開發", startDate: "Sep 2019", endDate: "Sep 2020", content: ["Tool: Xcode", "Languages: Swift 4"], desc: "", img: "golf"),
        Experience(job: "鼎新電腦股份有限公司", postion: "資訊服務工程師", startDate: "Jul 2019", endDate: "Oct 2019", content: ["主要負責系統: Cosmos ERP", "Languages: SQL(主要用來查帳)"], desc: "", img:"digiwin")
    ]

    
    var body: some View {
        NavigationView {
        
            List{
                
                // MARK: - 實習經驗
                ExperienceListView(sectionTitle: "實習經驗", experiences: practices)

                
                // MARK: - 打工經驗
                ExperienceListView(sectionTitle: "打工經驗", experiences: experiences)

            }

        .navigationBarTitle(Text("Experience"))
        }

    }
}

struct ExperienceListView: View{
    var sectionTitle: String
    var experiences: [Experience]
    
    var body: some View{
        Section(header: Text(sectionTitle)){
            ForEach(experiences){ experience in
                NavigationLink(destination: ExperienceDetailUIView(experience: experience)){
                    
                    HStack(spacing: 5.0){
                        Image(experience.img)
                            .resizable()
                            .frame(width: 60.0, height: 60.0)
                            .scaledToFit()
                        
                        VStack(alignment: .leading){
                            Text(experience.job).font(.headline)
                            Text(experience.postion).font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}

struct ExperienceUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceUIView()
    }
}
