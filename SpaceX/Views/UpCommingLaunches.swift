//
//  UpCommingLaunches.swift
//  SpaceX
//
//  Created by Kristhian De Oliveira on 11/9/21.
//

import SwiftUI

struct UpCommingLaunches: View {
    @State private var launchesUpcomming: [LaunchesUpcomingQuery.Data.LaunchesUpcoming?]?
    @State private var launchesPast: [LaunchesPastQuery.Data.LaunchesPast?]?
    @State private var launchesArrayPast = []
    @State private var launchesArrayFuture = []

    func getFutureLaunches() {
        Network.shared.apollo.fetch(query: LaunchesUpcomingQuery()) { result in
          switch result {
          case .success(let graphQLResult):
              launchesUpcomming = graphQLResult.data?.launchesUpcoming
              launchesArrayFuture = launchesUpcomming.map { $0 } as? [LaunchesUpcomingQuery.Data.LaunchesUpcoming] ?? []
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
    func getPastLaunches() {
        Network.shared.apollo.fetch(query: LaunchesPastQuery()) { result in
          switch result {
          case .success(let graphQLResult):
              launchesPast = graphQLResult.data?.launchesPast
              launchesArrayPast = launchesPast.map { $0 } as? [LaunchesPastQuery.Data.LaunchesPast] ?? []
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
    var body: some View {
        VStack {
            if launchesArrayFuture.isEmpty && launchesArrayPast.isEmpty {
                Text("Loading")
            } else {
                List {
                    Text("Future Launches")
                        .font(.largeTitle)
                        .bold()
                    ForEach(0..<launchesArrayFuture.count, id: \.hashValue) { i in
                        LaunchCListCard(imageSource: (launchesUpcomming?[i]?.links?.flickrImages?.first ?? "")!, missionName: launchesUpcomming?[i]?.missionName ?? "", siteName: launchesUpcomming?[i]?.launchSite?.siteName ?? "", launchDateLocal: launchesUpcomming?[i]?.launchDateLocal ?? "")
                    }
                    Text("Past Launches")
                        .font(.largeTitle)
                        .bold()
                    ForEach(0..<launchesArrayPast.count, id: \.hashValue) { i in
                        LaunchCListCard(imageSource: (launchesPast?[i]?.links?.flickrImages?.first ?? "")!, missionName: launchesPast?[i]?.missionName ?? "", siteName: launchesPast?[i]?.launchSite?.siteName ?? "", launchDateLocal: launchesPast?[i]?.launchDateLocal ?? "")
                    }
                }
                .padding()
                .frame(width: 500)
            }
        }
        .onAppear(perform: {
            let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)

            dispatchQueue.async {
                getFutureLaunches()
                getPastLaunches()
            }
        })
    }
}

//struct UpCommingLaunches_Previews: PreviewProvider {
//    static var previews: some View {
//        UpCommingLaunches()
//    }
//}
