#if swift(>=4.0)
@objcMembers public class EnNavigationAPI: NSObject  {

    static let kRequestNavigate = "com.ernnavigationApi.ern.api.request.navigate";


    public lazy var requests: EnNavigationAPIRequests = {
        return EnNavigationRequests()
    }()
}


@objcMembers public class EnNavigationAPIRequests: NSObject {
    public func registerNavigateRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }


    public func unregisterNavigateRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }


    public func navigate(route: ErnRoute, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}
#else
public class EnNavigationAPI: NSObject  {

    static let kRequestNavigate = "com.ernnavigationApi.ern.api.request.navigate";


    public lazy var requests: EnNavigationAPIRequests = {
        return EnNavigationRequests()
    }()
}


public class EnNavigationAPIRequests: NSObject {
    public func registerNavigateRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }


    public func unregisterNavigateRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }


    public func navigate(route: ErnRoute, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

#endif
