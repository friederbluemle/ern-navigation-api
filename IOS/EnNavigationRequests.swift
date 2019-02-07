#if swift(>=4.0)
@objcMembers public class EnNavigationRequests: ENNavigationAPIRequests {

    public override func registerNavigateRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: ENNavigationAPI.kRequestNavigate,
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
            requestName: ENNavigationAPI.kRequestNavigate,
            requestPayload: route,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}
#else
public class EnNavigationRequests: ENNavigationAPIRequests {

    public override func registerNavigateRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: ENNavigationAPI.kRequestNavigate,
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
            requestName: ENNavigationAPI.kRequestNavigate,
            requestPayload: route,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}
#endif
