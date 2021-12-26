//
//  ContentView.swift
//  AsyncImgSwiftUI
//
//  Created by Nurşah on 26.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationView {
           
         VStack {
             AsyncImage(url: URL(string: "https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg")!) { img in
                 img.resizable().frame(width: 300, height: 300, alignment: .center)
             } placeholder: {
                 ProgressView()
             }

              List(superHeroArray) { superhero in
                  Text(superhero.name)
            
              }.navigationTitle("Superhero Book")
           
         }
           
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
