//
//  CustomPlayer.swift
//  Platzi
//
//  Created by Fernando Florez on 11/08/21.
//

import SwiftUI
import AVKit

struct URLS {
    static let main = "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4"
}

struct CustomPlayer: View {
    @State var isPlayerActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    isPlayerActive.toggle()
                }) {
                    ZStack {
                        Image("cuphead")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "play.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.white)
                    }
                }
                
                NavigationLink(
                    destination: VideoModule(videoUrl: URLS.main),
                    isActive: $isPlayerActive,
                    label: {
                        EmptyView()
                    }
                )
            }
        }
        .accentColor(.red)
    }
}

struct VideoModule: View {
    var videoUrl: String
    
    var body: some View {
        ZStack {
            Color.black
            
            VideoPlayer(player: AVPlayer(url: URL(string: videoUrl)! ))
                .aspectRatio(contentMode: .fit)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct CustomPlayer_Previews: PreviewProvider {
    static var previews: some View {
        CustomPlayer()
        VideoModule(videoUrl: URLS.main)
    }
}
