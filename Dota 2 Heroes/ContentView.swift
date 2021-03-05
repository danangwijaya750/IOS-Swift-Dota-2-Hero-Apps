//
//  ContentView.swift
//  Dota 2 Heroes
//
//  Created by Danang Wijaya on 03/03/21.
//

import SwiftUI

struct Hero: Identifiable {
    let id = UUID()
    let heroName: String
    let heroRole: String
    let heroType: String
}


struct RowHero: View {
    var hero: Hero
    var body: some View {
        Image("logo").resizable().frame(width: 50, height: 50)
            .padding().background(Color("accentColor"))
        Text("Name : \(hero.heroName)")
        Text("Type : \(hero.heroType)")
        Text("Role : \(hero.heroRole)")
    }
}
struct LogoView: View {
    var body: some View{
        VStack{
        Image("logo").resizable().frame(width: 80, height:80).background(Color("kuning"))
            .padding().background(Color("AccentColor"))
            .cornerRadius(20)
            Text("Dota 2 Heroes").foregroundColor(Color.white)
        }
    }
}

struct LoginFormView: View {
    @State var username: String=""
    @State var passwd:String=""
    var body: some View {
        VStack(alignment: .leading){
            Text("Username").font(.callout).bold()
            TextField("Username.....",text:$username).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password.....",text:$passwd).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello Sign in")}, label: {
                HStack{
                Text("Sign In")
                    Spacer()
                }
            }).padding().background(Color.black).cornerRadius(10).foregroundColor(Color.white)
        }.padding(.all,30).background(Color("AccentColor"))
        .cornerRadius(10)
    }
}

struct ContentView: View {
    let heroes = [
        Hero(heroName: "Anti Mage", heroRole: "Carry", heroType: "Agility"),
        Hero(heroName: "Axe", heroRole: "Disabler", heroType: "Strength"),
        Hero(heroName: "Ancient Aparation", heroRole:"Support", heroType: "Intelegence")
    ]
        var body: some View {
//            List(heroes){ hero in
//                RowHero(hero: hero)
//        }
            ZStack{
                Image("bg")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:20){
                LogoView()
                LoginFormView()
            }.padding(.all,20)
            }
}}
struct ContentView_Preview : PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
