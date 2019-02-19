// @flow


export default class EnNavigationRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerNavigateRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernnavigationApi.ern.api.request.navigate", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * @param  route Route object that details where to navigate next
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     navigate(route: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernnavigationApi.ern.api.request.navigate", { data:route, timeout });

    }
}
