const autchSuccess = (newToken) => {
	return{
		type: 'AUCTH_SUCCESS',
		payload: newToken

	};
};
const autchRequested = ()=>{
	return {
		type: 'AUTCH_REQUESTED'
	};
};

const autchError = () =>{
	return {
		type: 'AUTCH_ERROR'
	}
}



export {
	autchSuccess,
	autchRequested,
	autchError,
};
