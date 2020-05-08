#if swift(>=4.0)
@objcMembers public class NavigationBar: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Title of Nav Bar
     */
    public let title: String
    /**
     Use to hide the navigation bar.
     */
    public let hide: Bool?
    /**
     Right button properties
     */
    public let buttons: [NavigationBarButton]?
    public let leftButton: NavigationBarLeftButton?

    public init(title: String, hide: Bool?, buttons: [NavigationBarButton]?, leftButton: NavigationBarLeftButton?) {
        self.title = title
        self.hide = hide
        self.buttons = buttons
        self.leftButton = leftButton
        super.init()
    }

    public override init() {
        title = String()
        hide = nil
        buttons = nil
        leftButton = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let title = dictionary["title"] as? String {
            self.title = title
        } else {
            assertionFailure("\(NavigationBar.tag) missing one or more required properties [title]")
            title = dictionary["title"] as! String
        }

        if let hide = dictionary["hide"] as? Bool {
            hide = hide
        } else {
            hide = nil
        }
        if let validButtons = try? NSObject.generateObject(data: dictionary["buttons"], classType: [Any].self, itemType: NavigationBarButton.self),
            let buttonsList = validButtons as? [NavigationBarButton] {
            buttons = buttonsList
        } else {
            buttons = nil
        }
        if let leftButtonDict = dictionary["leftButton"] as? [AnyHashable: Any] {
            leftButton = NavigationBarLeftButton(dictionary: leftButtonDict)
        } else {
            leftButton = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["title"] = title

        if let nonNullHide = hide {
            dict["hide"] = nonNullHide
        }
        if let nonNullButtons = buttons {
            dict["buttons"] = nonNullButtons.map { $0.toDictionary() }
        }
        if let nonNullLeftButton = leftButton {
            dict["leftButton"] = nonNullLeftButton.toDictionary()
        }
        return dict as NSDictionary
    }
}

#else

public class NavigationBar: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Title of Nav Bar
     */
    public let title: String
    /**
     Use to hide the navigation bar.
     */
    public let hide: Bool?
    /**
     Right button properties
     */
    public let buttons: [NavigationBarButton]?
    public let leftButton: NavigationBarLeftButton?

    public init(title: String, hide: Bool?, buttons: [NavigationBarButton]?, leftButton: NavigationBarLeftButton?) {
        self.title = title
        self.hide = hide
        self.buttons = buttons
        self.leftButton = leftButton
        super.init()
    }

    public override init() {
        title = String()
        hide = nil
        buttons = nil
        leftButton = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let title = dictionary["title"] as? String {
            self.title = title
        } else {
            assertionFailure("\(NavigationBar.tag) missing one or more required properties [title]")
            title = dictionary["title"] as! String
        }

        if let hide = dictionary["hide"] as? Bool {
            hide = hide
        } else {
            hide = nil
        }
        if let validButtons = try? NSObject.generateObject(data: dictionary["buttons"], classType: [Any].self, itemType: NavigationBarButton.self),
            let buttonsList = validButtons as? [NavigationBarButton] {
            buttons = buttonsList
        } else {
            buttons = nil
        }
        if let leftButtonDict = dictionary["leftButton"] as? [AnyHashable: Any] {
            leftButton = NavigationBarLeftButton(dictionary: leftButtonDict)
        } else {
            leftButton = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["title"] = title

        if let nonNullHide = hide {
            dict["hide"] = nonNullHide
        }
        if let nonNullButtons = buttons {
            dict["buttons"] = nonNullButtons.map { $0.toDictionary() }
        }
        if let nonNullLeftButton = leftButton {
            dict["leftButton"] = nonNullLeftButton.toDictionary()
        }
        return dict as NSDictionary
    }
}
#endif
