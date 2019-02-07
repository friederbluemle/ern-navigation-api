import { electrodeBridge } from 'react-native-electrode-bridge';
import ENNavigationRequests from './ENNavigationRequests';

const REQUESTS = new ENNavigationRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}


export default ({requests});


