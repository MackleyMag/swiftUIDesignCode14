//
//  ClouseButton.swift
//  DesignCode14App
//
//  Created by Mack Pessoal on 22/08/23.
//

import SwiftUI

struct ClouseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.white)
            .padding(.all, 10)
            .background(Color.black.opacity(0.6))
            .clipShape(Circle())
    }
}

struct ClouseButton_Previews: PreviewProvider {
    static var previews: some View {
        ClouseButton()
    }
}
