// @flow
export default class EnNavigationEvents {
    constructor(bridge) {
        this._bridge = bridge;
    }

            addNavEventEventListener( eventListener: Function): string {
            return   this._bridge.registerEventListener("com.ernnavigationApi.ern.api.event.navEvent", eventListener);
            }
            addOnNavButtonClickEventListener( eventListener: Function): string {
            return   this._bridge.registerEventListener("com.ernnavigationApi.ern.api.event.onNavButtonClick", eventListener);
            }

            removeNavEventEventListener( uuid: string): any {
            return   this._bridge.removeEventListener(uuid);
            }
            removeOnNavButtonClickEventListener( uuid: string): any {
            return   this._bridge.removeEventListener(uuid);
            }

//------------------------------------------------------------------------------------------------------------------------------------

            emitNavEvent(eventType: string, payload: string): void {

     const data =  {}
        // verify the required parameter 'eventType' is set
        if (eventType  == null) {
        throw "Missing the required parameter 'eventType' when calling 'EnNavigationApi#navEvent'";
        }
        // verify the required parameter 'payload' is set
        if (payload  == null) {
        throw "Missing the required parameter 'payload' when calling 'EnNavigationApi#navEvent'";
        }
           data['eventType'] = eventType;
           data['payload'] = payload;
                    return this._bridge.emitEvent("com.ernnavigationApi.ern.api.event.navEvent", { data })


            }
            emitOnNavButtonClick(buttonId: string): void {
                    return this._bridge.emitEvent("com.ernnavigationApi.ern.api.event.onNavButtonClick", { data:buttonId });


            }
}
