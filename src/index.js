import React from "react";
import ReactDOM from "react-dom";
import "./index.css";
import App from "./components/app/";
//import reportWebVitals from "./reportWebVitals";

import {Provider} from 'react-redux';
import {BrowserRouter  as Router} from 'react-router-dom';
import ErrorBoundry from './components/error-boundry';
import ContactsService from './service/concacts-service';
import ContactsServiceContext from './components/contacts-service-context'
import store from './store';
import 'bootstrap/dist/css/bootstrap.css'; 


const contactsService = new ContactsService;

ReactDOM.render(
	<Provider store={store}>
<ErrorBoundry>
	<ContactsServiceContext.Provider value={contactsService}>
		<Router>
		<App />
		</Router>
	</ContactsServiceContext.Provider>
</ErrorBoundry>
</Provider>
,
document.getElementById("root")
);
