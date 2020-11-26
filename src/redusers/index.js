const initialState = {
	contacts : {
	list:[],
	loading : true,
	error : false,
	},
	currentUser : {
	email:'',
	id:'',
	token:'',
	autch : true,
	error : false,
	},
}

const reducer =(state = initialState,action)=>{
	console.log('reduser 1:');
	console.log(state);
	switch(action.type){
		case 'AUCTH_SUCCESS':
			return {
				...state,
			};

		case 'AUTCH_REQUESTED':
			return {
				...state,
		};

		case 'AUTCH_ERROR':
			return {
				...state,
		};


		case 'CONCACT_LOADED':
			return {
				...state,
		};


		case 'CONCACT_REQUESTED':
			return {
				...state,
		};

		case 'CONCACT_ERROR':
			return {
				...state,
		};

		case 'CONTACT_ADD':
			return {
				...state,
		};
		case 'CONTACT_EDIT':
			return {
				...state,
		};
		case 'CONTACT_DELETE':
			return {
				...state,
		};

		
	
		default:
			return state;

	}


}

export default reducer;
