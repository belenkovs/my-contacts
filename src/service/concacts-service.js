export  default class ContactsService{
	_apiBase = 'http://test5.usva.biz'
	
	async getResource(url) {
		const res =await fetch(`${this._apiBase}${url}`);
		if (!res.ok) {
			throw new Error(`Could not fetch ${url},received ${res.status}`);
		}
		console.log(`${this._apiBase}${url}`);
		return await res.json();
	}

	async  getMessageItems() {
		console.log('getConcactsItems');
		return await this.getResource('/concacts/');
	}

	async editContact(id='') {

		const newContact={
			userId:1,
			tokenId:1,
			chanelId:1,
			messRootId:null,
			mess:message
		}

		const response = await fetch (`${this._apiBase}/concacts/`, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json;charsert=utf-8'
			},
			body: JSON.stringify(newContact)
		});
		if (!response.ok) {
			throw new Error('json error');
		}		

//		console.log('mes 1'+message);
//		console.log(newMessage);
//		this.getMessageItems();

		return <></>;
	}

	

}
