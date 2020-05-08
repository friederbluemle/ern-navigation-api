#if swift(>=4.0)
@objcMembers public class NavigationBarLeftButton: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Button title if any, applied only for iOS.
     */
    public let title: String?
    /**
     Icon resource identifier that can be used find the icon
     */
    public let icon: String?
    /**
     Specifies a tint for the icon. Supported formats: #RRGGBB, #AARRGGBB. Supported values: red, blue, green, black, white, gray, cyan, magenta, yellow, lightgray, darkgray, grey, lightgrey, darkgrey, aqua, fuchsia, lime, maroon, navy, olive, purple, silver and teal
     */
    public let tint: String?
    /**
     Id of the button, this namespace will be used as an identifier when a button click event is emitted. If included, click will not be handled by native instead an event will be fired for react native to handle the backpress.
     */
    public let id: String?
    /**
     Default to false. If set to true the button will be disabled(non-clickable). Android will remove the left icon indicator
     */
    public let disabled: Bool?
    /**
     Accessibility label
     */
    public let adaLabel: String?

    public init(title: String?, icon: String?, tint: String?, id: String?, disabled: Bool?, adaLabel: String?) {
        self.title = title
        self.icon = icon
        self.tint = tint
        self.id = id
        self.disabled = disabled
        self.adaLabel = adaLabel
        super.init()
    }

    public override init() {
        title = nil
        icon = nil
        tint = nil
        id = nil
        disabled = nil
        adaLabel = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {

        if let title = dictionary["title"] as? String {
            title = title
        } else {
            title = nil
        }
        if let icon = dictionary["icon"] as? String {
            icon = icon
        } else {
            icon = nil
        }
        if let tint = dictionary["tint"] as? String {
            tint = tint
        } else {
            tint = nil
        }
        if let id = dictionary["id"] as? String {
            id = id
        } else {
            id = nil
        }
        if let disabled = dictionary["disabled"] as? Bool {
            disabled = disabled
        } else {
            disabled = nil
        }
        if let adaLabel = dictionary["adaLabel"] as? String {
            adaLabel = adaLabel
        } else {
            adaLabel = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]


        if let nonNullTitle = title {
            dict["title"] = nonNullTitle
        }
        if let nonNullIcon = icon {
            dict["icon"] = nonNullIcon
        }
        if let nonNullTint = tint {
            dict["tint"] = nonNullTint
        }
        if let nonNullId = id {
            dict["id"] = nonNullId
        }
        if let nonNullDisabled = disabled {
            dict["disabled"] = nonNullDisabled
        }
        if let nonNullAdaLabel = adaLabel {
            dict["adaLabel"] = nonNullAdaLabel
        }
        return dict as NSDictionary
    }
}

#else

public class NavigationBarLeftButton: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Button title if any, applied only for iOS.
     */
    public let title: String?
    /**
     Icon resource identifier that can be used find the icon
     */
    public let icon: String?
    /**
     Specifies a tint for the icon. Supported formats: #RRGGBB, #AARRGGBB. Supported values: red, blue, green, black, white, gray, cyan, magenta, yellow, lightgray, darkgray, grey, lightgrey, darkgrey, aqua, fuchsia, lime, maroon, navy, olive, purple, silver and teal
     */
    public let tint: String?
    /**
     Id of the button, this namespace will be used as an identifier when a button click event is emitted. If included, click will not be handled by native instead an event will be fired for react native to handle the backpress.
     */
    public let id: String?
    /**
     Default to false. If set to true the button will be disabled(non-clickable). Android will remove the left icon indicator
     */
    public let disabled: Bool?
    /**
     Accessibility label
     */
    public let adaLabel: String?

    public init(title: String?, icon: String?, tint: String?, id: String?, disabled: Bool?, adaLabel: String?) {
        self.title = title
        self.icon = icon
        self.tint = tint
        self.id = id
        self.disabled = disabled
        self.adaLabel = adaLabel
        super.init()
    }

    public override init() {
        title = nil
        icon = nil
        tint = nil
        id = nil
        disabled = nil
        adaLabel = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {

        if let title = dictionary["title"] as? String {
            title = title
        } else {
            title = nil
        }
        if let icon = dictionary["icon"] as? String {
            icon = icon
        } else {
            icon = nil
        }
        if let tint = dictionary["tint"] as? String {
            tint = tint
        } else {
            tint = nil
        }
        if let id = dictionary["id"] as? String {
            id = id
        } else {
            id = nil
        }
        if let disabled = dictionary["disabled"] as? Bool {
            disabled = disabled
        } else {
            disabled = nil
        }
        if let adaLabel = dictionary["adaLabel"] as? String {
            adaLabel = adaLabel
        } else {
            adaLabel = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]


        if let nonNullTitle = title {
            dict["title"] = nonNullTitle
        }
        if let nonNullIcon = icon {
            dict["icon"] = nonNullIcon
        }
        if let nonNullTint = tint {
            dict["tint"] = nonNullTint
        }
        if let nonNullId = id {
            dict["id"] = nonNullId
        }
        if let nonNullDisabled = disabled {
            dict["disabled"] = nonNullDisabled
        }
        if let nonNullAdaLabel = adaLabel {
            dict["adaLabel"] = nonNullAdaLabel
        }
        return dict as NSDictionary
    }
}
#endif
