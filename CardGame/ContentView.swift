//
//  ContentView.swift
//  CardGame
//
//  Created by Gaurav Rawat on 04/01/22.
//

import SwiftUI

struct ContentView: View {
   @State var userCard = "card3"
    @State  var oppnentCard = "card2"
    @State  var userScore = 0
    @State  var opponentScore = 0

    var body: some View {
        ZStack(content: {
            Image("background").ignoresSafeArea()

        VStack(content: {
            Spacer()

            Image("logo")
            Spacer()

            HStack(content: {
                Spacer()

                Image(userCard)
                Spacer()

                Image(oppnentCard)
                Spacer()

                
            }).padding(.horizontal,20)
            Spacer()

            Button(action: {
                let uCard = Int.random(in: 2...14)
                let oppCard = Int.random(in: 2...14)
                userCard="card"+String(uCard)
                oppnentCard="card"+String(oppCard)
                if uCard>=oppCard
                {
                userScore+=1
                }
            else
                {
                opponentScore+=1
                }


            }) {
                Image("dealbutton")
            }
            Spacer()

            HStack(content: {
                Spacer()

                VStack(content: {
                    Text("Player ").font(.headline).fontWeight(.black).foregroundColor(.white)
                        .padding(.bottom, 10)

                    Text(String(userScore)).font(.largeTitle).foregroundColor(.white)
                })
                Spacer()

                VStack(content: {
                    Text("Opponent").font(.headline).fontWeight(.black).foregroundColor(.white)
                   
                        .padding(.bottom, 10)
                    Text(String(opponentScore)).font(.largeTitle).foregroundColor(.white)
                    
                })
                
                Spacer()

            }).padding()
            Spacer()

        }).padding()
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
