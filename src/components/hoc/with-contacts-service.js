import React from 'react';
import ContactsServiceContext from '../contacts-service-context';

const WithContactsService = () => {
    return (Wrapped) => {
        return (props) => {
            return (
                <ContactsServiceContext.Consumer>
                    {
                    (ContactsService) => {
                        return <Wrapped {...props} ContactsService={ContactsService} />                        
                    }
                    }
                </ContactsServiceContext.Consumer>
            );
        };
    };
};

export default WithContactsService;
