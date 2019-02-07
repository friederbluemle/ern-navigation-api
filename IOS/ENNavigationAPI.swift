#if swift(>=4.0)
@objcMembers public class ENNavigationAPI: NSObject  {

    static let kRequestNavigate = "com.ernnavigationApi.ern.api.request.navigate";


    public lazy var requests: ENNavigationAPIRequests = {
        return ENNavigationRequests()
    }()
}


@objcMembers public class ENNavigationAPIRequests: NSObject {
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
public class ENNavigationAPI: NSObject  {

    static let kRequestNavigate = "com.ernnavigationApi.ern.api.request.navigate";


    public lazy var requests: ENNavigationAPIRequests = {
        return ENNavigationRequests()
    }()
}


public class ENNavigationAPIRequests: NSObject {
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
