tag loading-button < button
	prop loading\boolean
	prop type\HTMLButtonElement["type"]

	def render
		<self [cursor:pointer d:flex all: unset rd:10px p: 5px 40px 5px 40px fs: 20px c:#303446 fw: 500 bgc: #C8CFF2 h: 29px mt: 17px mr:10px] disabled=loading .hf-btn type=type>
			if loading
				<div.btn-spinner[mr:2px]>
			else <slot>