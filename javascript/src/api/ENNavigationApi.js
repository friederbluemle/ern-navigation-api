import { electrodeBridge } from 'react-native-electrode-bridge';
import EnNavigationRequests from './EnNavigationRequests';

const REQUESTS = new EnNavigationRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}


export default ({requests});


