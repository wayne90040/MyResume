//
//  ExperienceDetail.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/6.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import SwiftUI

struct ExperienceDetailUIView: View {
    let experience: Experience
    
    
    // MARK: - Body View
    
    var body: some View {

        VStack(alignment: .center, spacing: 5.0) {
            Image(experience.img).resizable().frame(width: 150, height: 150).clipShape(Circle())
            
            Text(experience.job).font(.largeTitle)
                
            Text("\(experience.startDate) - \(experience.endDate)").font(.headline)
            
            Text(experience.postion).foregroundColor(.gray)
            
            ForEach(experience.content.indices){ (index) in
                Text(experience.content[index])
            }
            
            Spacer()
        }
    }
    
}

struct ExperienceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceDetailUIView(experience: Experience(job: "", postion: "", startDate: "", endDate: "", content: [""], desc: "", img: ""))
    }
}
