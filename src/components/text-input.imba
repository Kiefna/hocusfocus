import type { InputType } from '../'


tag text-input
	prop label\string
	prop error\string
	prop type\InputType
	prop autofocus\HTMLInputElement["autofocus"]
	prop autocapitalize\HTMLInputElement["autocapitalize"]
	<self>
		<div[mb:20px]>
			if label
				<label[d:inline-block fw:500 mb:5px c:#C6D0F5] for="id"> label
			<input[p:0.5rem lh:1.5 d:block w:100% bd: 2px solid #C6D0F5 rd: 5px bgc:#51576D c:#C6D0F5 fw:500] .error=error id=(id or label) type=type bind=data />
			if error
				<div[c:#E78284 mt:4px]> error