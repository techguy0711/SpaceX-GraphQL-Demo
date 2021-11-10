//
//  LaunchCListCard.swift
//  SpaceX
//
//  Created by Kristhian De Oliveira on 11/9/21.
//

import SwiftUI

struct LaunchCListCard: View {
    @State var imageSource:String
    @State var missionName:String
    @State var siteName:String
    @State var launchDateLocal:String
    var body: some View {
        ZStack {
            Image(systemName: "Image")
                .data(url: (URL(string: imageSource) ?? URL(string: "https://cdn.mos.cms.futurecdn.net/AKbyqTKUkicsYGx3xwe3HA.jpg"))!)
                .grayscale(1)
                .frame(width: 400, height: 200, alignment: .center)
            VStack {
                Text(missionName)
                    .foregroundColor(.green)
                    .bold()
                    .font(.largeTitle)
                Text(siteName)
                    .foregroundColor(.green)
                    .font(.title)
                Text(launchDateLocal)
                    .foregroundColor(.green)
                    .bold()
                    .italic()
                    .font(.body)
            }
                
        }
    }
}

struct LaunchCListCard_Previews: PreviewProvider {
    static var previews: some View {
        LaunchCListCard(imageSource: "https://cdn.mos.cms.futurecdn.net/AKbyqTKUkicsYGx3xwe3HA.jpg", missionName: "C101 V4", siteName: "Cape Canaveral", launchDateLocal: "Nov 11 1PM")
    }
}
