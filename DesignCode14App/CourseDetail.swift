//
//  CourseDetail.swift
//  DesignCode14App
//
//  Created by Mack Pessoal on 22/08/23.
//

import SwiftUI

struct CourseDetail: View {
    var course: Course = courses[0]
    var nameSpace: Namespace.ID
    
    var body: some View {
        VStack {
            ScrollView {
                CourseItem(course: course)
                    .matchedGeometryEffect(id: course.id, in: nameSpace)
                    .frame(height: 300)
                
                VStack {
                    ForEach(courseSections) { item in
                        CourseRow(item: item)
                        Divider()
                    }
                }
                .padding()
            }
            
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .matchedGeometryEffect(id: "container\(course.id)", in: nameSpace)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    @Namespace static var nameSpace
    
    static var previews: some View {
        CourseDetail(nameSpace: nameSpace)
    }
}
