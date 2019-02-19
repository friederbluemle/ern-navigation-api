#if swift(>=4.0)
@objcMembers public class EnNavigationRequests: EnNavigationAPIRequests {

    public override func registerNavigateRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: EnNavigationAPI.kRequestNavigate,
    reqClass: ErnRoute.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }


    public override func unregisterNavigateRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    public override func navigate(route: ErnRoute, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<ErnRoute, None, Any>(
            requestName: EnNavigationAPI.kRequestNavigate,
            requestPayload: route,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}
#else
public class EnNavigationRequests: EnNavigationAPIRequests {

    public override func registerNavigateRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: EnNavigationAPI.kRequestNavigate,
    reqClass: ErnRoute.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    //------------------------------------------------------------------------------------------------------------------------------------



    public override func unregisterNavigateRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
      return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func navigate(route: ErnRoute, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<ErnRoute, None, Any>(
            requestName: EnNavigationAPI.kRequestNavigate,
            requestPayload: route,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}
#endif
