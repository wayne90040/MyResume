//
//  ProfileUIView.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/7.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import SwiftUI

struct ProfileUIView: View {
    let profile = Profile(nameZh: "許維倫", nameEn: "Hsu, Wei Lun", address: "Keelung, TW")
    
    var body: some View {
        
        VStack(spacing: 5.0) {
            Image(systemName: "photo").resizable()
                .frame(width: 100.0, height: 100.0)
                .clipShape(Circle())
            
            Text(profile.nameZh).font(.largeTitle)
            Text(profile.nameEn).font(.title)
            Text(profile.address).foregroundColor(.gray).font(.footnote)
            
            Divider()
            
            InfoUIView()
            
        }
    }
}

struct InfoUIView: View {
    let info = Info(birthday: "1997-09-05", phone: "0978354921", email: "Wei.LunHsu1997@gmail.com", school: "國立台北商業大學 資訊管理系")
    
    var body: some View{
        VStack(alignment: .leading, spacing: 10.0) {
            HStack {
                Image(systemName: "gift.fill").resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(info.birthday)
            }
            
            HStack {
                Image(systemName: "phone.fill").resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Button(info.phone) {
                    UIApplication.shared.open(URL(string: "tel:\(info.phone)")!)
               }
            }
            
            HStack {
                Image(systemName: "envelope.fill").resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(info.email)
            }
            
            HStack {
                Image(systemName: "building.2.fill").resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(info.school)
            }
        }
    }
}

struct ProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUIView()
    }
}
