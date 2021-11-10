// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LaunchesPastQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query launchesPast {
      launchesPast {
        __typename
        mission_name
        launch_date_local
        launch_site {
          __typename
          site_id
          site_name
        }
        rocket {
          __typename
          rocket_name
          rocket_type
        }
        links {
          __typename
          flickr_images
        }
      }
    }
    """

  public let operationName: String = "launchesPast"

  public let operationIdentifier: String? = "d2a13e0e6f0c4d0c61eacf4ba33b05d6fae37d9613c67920a9df7c22d03b910a"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchesPast", type: .list(.object(LaunchesPast.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchesPast: [LaunchesPast?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchesPast": launchesPast.flatMap { (value: [LaunchesPast?]) -> [ResultMap?] in value.map { (value: LaunchesPast?) -> ResultMap? in value.flatMap { (value: LaunchesPast) -> ResultMap in value.resultMap } } }])
    }

    public var launchesPast: [LaunchesPast?]? {
      get {
        return (resultMap["launchesPast"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [LaunchesPast?] in value.map { (value: ResultMap?) -> LaunchesPast? in value.flatMap { (value: ResultMap) -> LaunchesPast in LaunchesPast(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [LaunchesPast?]) -> [ResultMap?] in value.map { (value: LaunchesPast?) -> ResultMap? in value.flatMap { (value: LaunchesPast) -> ResultMap in value.resultMap } } }, forKey: "launchesPast")
      }
    }

    public struct LaunchesPast: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("launch_date_local", type: .scalar(String.self)),
          GraphQLField("launch_site", type: .object(LaunchSite.selections)),
          GraphQLField("rocket", type: .object(Rocket.selections)),
          GraphQLField("links", type: .object(Link.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(missionName: String? = nil, launchDateLocal: String? = nil, launchSite: LaunchSite? = nil, rocket: Rocket? = nil, links: Link? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "mission_name": missionName, "launch_date_local": launchDateLocal, "launch_site": launchSite.flatMap { (value: LaunchSite) -> ResultMap in value.resultMap }, "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }, "links": links.flatMap { (value: Link) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var missionName: String? {
        get {
          return resultMap["mission_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_name")
        }
      }

      public var launchDateLocal: String? {
        get {
          return resultMap["launch_date_local"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_date_local")
        }
      }

      public var launchSite: LaunchSite? {
        get {
          return (resultMap["launch_site"] as? ResultMap).flatMap { LaunchSite(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "launch_site")
        }
      }

      public var rocket: Rocket? {
        get {
          return (resultMap["rocket"] as? ResultMap).flatMap { Rocket(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "rocket")
        }
      }

      public var links: Link? {
        get {
          return (resultMap["links"] as? ResultMap).flatMap { Link(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "links")
        }
      }

      public struct LaunchSite: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchSite"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("site_id", type: .scalar(String.self)),
            GraphQLField("site_name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(siteId: String? = nil, siteName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchSite", "site_id": siteId, "site_name": siteName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var siteId: String? {
          get {
            return resultMap["site_id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_id")
          }
        }

        public var siteName: String? {
          get {
            return resultMap["site_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_name")
          }
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_name", type: .scalar(String.self)),
            GraphQLField("rocket_type", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketName: String? = nil, rocketType: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_name": rocketName, "rocket_type": rocketType])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
          }
        }

        public var rocketType: String? {
          get {
            return resultMap["rocket_type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_type")
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchLinks"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("flickr_images", type: .list(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(flickrImages: [String?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchLinks", "flickr_images": flickrImages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var flickrImages: [String?]? {
          get {
            return resultMap["flickr_images"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "flickr_images")
          }
        }
      }
    }
  }
}

public final class LaunchesUpcomingQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query launchesUpcoming {
      launchesUpcoming {
        __typename
        mission_name
        launch_date_local
        launch_site {
          __typename
          site_id
          site_name
        }
        rocket {
          __typename
          rocket_name
          rocket_type
        }
        links {
          __typename
          flickr_images
        }
      }
    }
    """

  public let operationName: String = "launchesUpcoming"

  public let operationIdentifier: String? = "975e9adc34c75a4a4a360503e8dc69f3efadcdba31212ab00223e82f0b2f0d1d"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchesUpcoming", type: .list(.object(LaunchesUpcoming.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchesUpcoming: [LaunchesUpcoming?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchesUpcoming": launchesUpcoming.flatMap { (value: [LaunchesUpcoming?]) -> [ResultMap?] in value.map { (value: LaunchesUpcoming?) -> ResultMap? in value.flatMap { (value: LaunchesUpcoming) -> ResultMap in value.resultMap } } }])
    }

    public var launchesUpcoming: [LaunchesUpcoming?]? {
      get {
        return (resultMap["launchesUpcoming"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [LaunchesUpcoming?] in value.map { (value: ResultMap?) -> LaunchesUpcoming? in value.flatMap { (value: ResultMap) -> LaunchesUpcoming in LaunchesUpcoming(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [LaunchesUpcoming?]) -> [ResultMap?] in value.map { (value: LaunchesUpcoming?) -> ResultMap? in value.flatMap { (value: LaunchesUpcoming) -> ResultMap in value.resultMap } } }, forKey: "launchesUpcoming")
      }
    }

    public struct LaunchesUpcoming: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("launch_date_local", type: .scalar(String.self)),
          GraphQLField("launch_site", type: .object(LaunchSite.selections)),
          GraphQLField("rocket", type: .object(Rocket.selections)),
          GraphQLField("links", type: .object(Link.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(missionName: String? = nil, launchDateLocal: String? = nil, launchSite: LaunchSite? = nil, rocket: Rocket? = nil, links: Link? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "mission_name": missionName, "launch_date_local": launchDateLocal, "launch_site": launchSite.flatMap { (value: LaunchSite) -> ResultMap in value.resultMap }, "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }, "links": links.flatMap { (value: Link) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var missionName: String? {
        get {
          return resultMap["mission_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_name")
        }
      }

      public var launchDateLocal: String? {
        get {
          return resultMap["launch_date_local"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_date_local")
        }
      }

      public var launchSite: LaunchSite? {
        get {
          return (resultMap["launch_site"] as? ResultMap).flatMap { LaunchSite(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "launch_site")
        }
      }

      public var rocket: Rocket? {
        get {
          return (resultMap["rocket"] as? ResultMap).flatMap { Rocket(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "rocket")
        }
      }

      public var links: Link? {
        get {
          return (resultMap["links"] as? ResultMap).flatMap { Link(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "links")
        }
      }

      public struct LaunchSite: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchSite"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("site_id", type: .scalar(String.self)),
            GraphQLField("site_name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(siteId: String? = nil, siteName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchSite", "site_id": siteId, "site_name": siteName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var siteId: String? {
          get {
            return resultMap["site_id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_id")
          }
        }

        public var siteName: String? {
          get {
            return resultMap["site_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_name")
          }
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_name", type: .scalar(String.self)),
            GraphQLField("rocket_type", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketName: String? = nil, rocketType: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_name": rocketName, "rocket_type": rocketType])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
          }
        }

        public var rocketType: String? {
          get {
            return resultMap["rocket_type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_type")
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchLinks"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("flickr_images", type: .list(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(flickrImages: [String?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchLinks", "flickr_images": flickrImages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var flickrImages: [String?]? {
          get {
            return resultMap["flickr_images"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "flickr_images")
          }
        }
      }
    }
  }
}
