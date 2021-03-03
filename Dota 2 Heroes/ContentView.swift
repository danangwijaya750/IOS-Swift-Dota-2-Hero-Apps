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
        Text("Name : \(hero.heroName)")
        Text("Type : \(hero.heroType)")
        Text("Role : \(hero.heroRole)")
    }
}
struct ContentView: View {
    let heroes = [
        Hero(heroName: "Anti Mage", heroRole: "Carry", heroType: "Agility"),
        Hero(heroName: "Axe", heroRole: "Disabler", heroType: "Strength"),
        Hero(heroName: "Ancient Aparation", heroRole:"Support", heroType: "Intelegence")
    ]
        var body: some View {
            List(heroes){ hero in
                RowHero(hero: hero)
        }
}
}
