//
//  CourseRow.swift
//  DesignCode14App
//
//  Created by Mack Pessoal on 21/08/23.
//

import SwiftUI

struct CourseRow: View {
    var item: CourseSection = courseSections[0]
    var body: some View {
        HStack(alignment: .top){
            Image(item.logo)
                .renderingMode(.original)
                .frame(width: 48.0, height: 48.0)
                .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .background(item.color)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 4.0) {
                Text(item.title)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.primary)
                Text(item.subtitle)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}
