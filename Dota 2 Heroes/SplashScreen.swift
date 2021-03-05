//
//  SplashScreen.swift
//  Dota 2 Heroes
//
//  Created by Rifky Ari on 05/03/21.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        Image("logo")
            .resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
