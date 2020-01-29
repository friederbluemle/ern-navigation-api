/*
* Copyright 2017 WalmartLabs
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* http://www.apache.org/licenses/LICENSE-2.0
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package com.ernnavigationApi.ern.api;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.List;
import com.walmartlabs.electrode.reactnative.bridge.Bridgeable;

import static com.walmartlabs.electrode.reactnative.bridge.util.BridgeArguments.*;

public class NavEventData implements Parcelable, Bridgeable {

    private String eventType;
    private String payload;

    private NavEventData() {}

    private NavEventData(Builder builder) {
        this.eventType = builder.eventType;
        this.payload = builder.payload;
    }

    private NavEventData(Parcel in) {
        this(in.readBundle());
    }

    public NavEventData(@NonNull Bundle bundle) {
        if(bundle.get("eventType") == null){
            throw new IllegalArgumentException("eventType property is required");
        }
        if(bundle.get("payload") == null){
            throw new IllegalArgumentException("payload property is required");
        }
        this.eventType = bundle.getString("eventType");
        this.payload = bundle.getString("payload");
    }

    public static final Creator<NavEventData> CREATOR = new Creator<NavEventData>() {
        @Override
        public NavEventData createFromParcel(Parcel in) {
            return new NavEventData(in);
        }

        @Override
        public NavEventData[] newArray(int size) {
            return new NavEventData[size];
        }
    };

    /**
    * Type of the event. Supported values [BUTTON_CLICK, DID_FOCUS, DID_BLUR]
    *
    * @return String
    */
    @NonNull
    public String geteventType() {
        return eventType;
    }

    /**
    * optional payload associated with the event
    *
    * @return String
    */
    @NonNull
    public String getpayload() {
        return payload;
    }


    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(toBundle());
    }

    @NonNull
    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("eventType", this.eventType);
        bundle.putString("payload", this.payload);
        return bundle;
    }

    public static class Builder {
        private final String eventType;
        private final String payload;

        public Builder(@NonNull String eventType, @NonNull String payload) {
            this.eventType = eventType;
            this.payload = payload;
        }


        @NonNull
        public NavEventData build() {
            return new NavEventData(this);
        }
    }
}
