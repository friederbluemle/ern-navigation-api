#if swift(>=4.0)
@objcMembers public class ErnNavRoute: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Path of the Route. Mostly the name of the container(defined by the native app) or the miniapp name. The content of the path is mainly determined by the native implemenation of the API
     */
    public let path: String
    /**
     Optional Payload (respresented as JSON String) needed by the screen you are trying to navigate to.
     */
    public let jsonPayload: String?
    public let navigationBar: NavigationBar?
    /**
     If set to true, the view component would be displayed over a transparent theme. Default value is false.
     */
    public let overlay: Bool?
    /**
     Set to true if you would like to re-render a component while navigating back to it.
     */
    public let refresh: Bool?

    public init(path: String, jsonPayload: String?, navigationBar: NavigationBar?, overlay: Bool?, refresh: Bool?) {
        self.path = path
        self.jsonPayload = jsonPayload
        self.navigationBar = navigationBar
        self.overlay = overlay
        self.refresh = refresh
        super.init()
    }

    public override init() {
        path = String()
        jsonPayload = nil
        navigationBar = nil
        overlay = nil
        refresh = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let path = dictionary["path"] as? String {
            self.path = path
        } else {
            assertionFailure("\(ErnNavRoute.tag) missing one or more required properties [path]")
            path = dictionary["path"] as! String
        }

        if let jsonPayload = dictionary["jsonPayload"] as? String {
            jsonPayload = jsonPayload
        } else {
            jsonPayload = nil
        }
        if let navigationBarDict = dictionary["navigationBar"] as? [AnyHashable: Any] {
            navigationBar = NavigationBar(dictionary: navigationBarDict)
        } else {
            navigationBar = nil
        }
        if let overlay = dictionary["overlay"] as? Bool {
            overlay = overlay
        } else {
            overlay = nil
        }
        if let refresh = dictionary["refresh"] as? Bool {
            refresh = refresh
        } else {
            refresh = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["path"] = path

        if let nonNullJsonPayload = jsonPayload {
            dict["jsonPayload"] = nonNullJsonPayload
        }
        if let nonNullNavigationBar = navigationBar {
            dict["navigationBar"] = nonNullNavigationBar.toDictionary()
        }
        if let nonNullOverlay = overlay {
            dict["overlay"] = nonNullOverlay
        }
        if let nonNullRefresh = refresh {
            dict["refresh"] = nonNullRefresh
        }
        return dict as NSDictionary
    }
}

#else

public class ErnNavRoute: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Path of the Route. Mostly the name of the container(defined by the native app) or the miniapp name. The content of the path is mainly determined by the native implemenation of the API
     */
    public let path: String
    /**
     Optional Payload (respresented as JSON String) needed by the screen you are trying to navigate to.
     */
    public let jsonPayload: String?
    public let navigationBar: NavigationBar?
    /**
     If set to true, the view component would be displayed over a transparent theme. Default value is false.
     */
    public let overlay: Bool?
    /**
     Set to true if you would like to re-render a component while navigating back to it.
     */
    public let refresh: Bool?

    public init(path: String, jsonPayload: String?, navigationBar: NavigationBar?, overlay: Bool?, refresh: Bool?) {
        self.path = path
        self.jsonPayload = jsonPayload
        self.navigationBar = navigationBar
        self.overlay = overlay
        self.refresh = refresh
        super.init()
    }

    public override init() {
        path = String()
        jsonPayload = nil
        navigationBar = nil
        overlay = nil
        refresh = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let path = dictionary["path"] as? String {
            self.path = path
        } else {
            assertionFailure("\(ErnNavRoute.tag) missing one or more required properties [path]")
            path = dictionary["path"] as! String
        }

        if let jsonPayload = dictionary["jsonPayload"] as? String {
            jsonPayload = jsonPayload
        } else {
            jsonPayload = nil
        }
        if let navigationBarDict = dictionary["navigationBar"] as? [AnyHashable: Any] {
            navigationBar = NavigationBar(dictionary: navigationBarDict)
        } else {
            navigationBar = nil
        }
        if let overlay = dictionary["overlay"] as? Bool {
            overlay = overlay
        } else {
            overlay = nil
        }
        if let refresh = dictionary["refresh"] as? Bool {
            refresh = refresh
        } else {
            refresh = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["path"] = path

        if let nonNullJsonPayload = jsonPayload {
            dict["jsonPayload"] = nonNullJsonPayload
        }
        if let nonNullNavigationBar = navigationBar {
            dict["navigationBar"] = nonNullNavigationBar.toDictionary()
        }
        if let nonNullOverlay = overlay {
            dict["overlay"] = nonNullOverlay
        }
        if let nonNullRefresh = refresh {
            dict["refresh"] = nonNullRefresh
        }
        return dict as NSDictionary
    }
}
#endif
