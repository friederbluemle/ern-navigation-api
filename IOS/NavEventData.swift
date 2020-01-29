#if swift(>=4.0)
@objcMembers public class NavEventData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let eventType: String
    public let payload: String

    public init(eventType: String, payload: String) {
        self.eventType = eventType
        self.payload = payload
        super.init()
    }

    public override init() {
        self.eventType = String()
        self.payload = String()
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let eventType = dictionary["eventType"] as? String,

                let payload = dictionary["payload"] as? String { 
            self.eventType = eventType
            self.payload = payload
        } else {
            assertionFailure("\(NavEventData.tag) missing one or more required properties[eventType,payload]")
            self.eventType = dictionary["eventType"] as! String
            self.payload = dictionary["payload"] as! String
        }


        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "eventType": self.eventType,
            "payload": self.payload
        ] as [AnyHashable : Any]

        return dict as NSDictionary
    }

}
#else
public class NavEventData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let eventType: String
    public let payload: String

    public init(eventType: String, payload: String) {
        self.eventType = eventType
        self.payload = payload
        super.init()
    }

    public override init() {
        self.eventType = String()
        self.payload = String()
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let eventType = dictionary["eventType"] as? String,

                let payload = dictionary["payload"] as? String { 
            self.eventType = eventType
            self.payload = payload
        } else {
            assertionFailure("\(NavEventData.tag) missing one or more required properties[eventType,payload]")
            self.eventType = dictionary["eventType"] as! String
            self.payload = dictionary["payload"] as! String
        }


        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "eventType": self.eventType,
            "payload": self.payload
        ] as [AnyHashable : Any]

        return dict as NSDictionary
    }

}
#endif
