const contactLoaded = (newConcat) => {
	return{
		type: 'CONTACT_LOADED',
		payload: newConcat

	};
};

const contactRequested = ()=>{
	return {
		type: 'CONTACT_REQUESTED'
	};
};

const contactError = () =>{
	return {
		type: 'CONTACT_ERROR'
	}
}


const contactAdd = (newConcat) => {
	return{
		type: 'CONTACT_ADD',
		payload: newConcat

	};
};

const contactEdit = (newConcat) => {
	return{
		type: 'CONTACT_EDIT',
		payload: newConcat

	};
};

const contactDelete = (id) => {
	return{
		type: 'CONTACT_DELETE',
		payload: id

	};
};




export {
	contactLoaded,
	contactRequested,
	contactError,
        contactAdd,
        contactEdit,
	contactDelete
};
