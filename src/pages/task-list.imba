import { isTemplateHead } from 'typescript'
import { Form } from 'imba-inertia-adapter'

tag task-list
	prop active? = true
	prop activeList = []
	prop doneList = []
	
	def setup
		console.log "props", self.props
		self.input = new Form
			task: ''
			count: '1'
			completed?: false

	get currentList 
		active? ? activeList : doneList

	css
		span
			c:#C8CFF2 fs:20px
		input
			va: middle
			fs: 18px
			&::placeholder
				color: #A5ADCE
				fs: 18px

			&:-ms-input-placeholder
				color: #A5ADCE

			&::-ms-input-placeholder
				color: #A5ADCE

		textarea@focus, input@focus
			outline: none
			&::placeholder
				color: transparent;


	<self[of:hidden rd:8px]>
		<div[h:35px d:flex fld:row]>
			<div.tab[h:35px w:125px ta:center pt:7px rdtr: xl rdtl: xl][bgc:#51576d]>
				# <i.fas.{iconSort[phase]}[c:C8CFF2 fs:25px][fs:20px]=!currentIndex?(index)> 
				<span> "Active"
			<div.tab[h:35px w:125px ta:center pt:7px rdtr: xl rdtl: xl]>
				# <i.fas.{iconSort[phase]}[c:C8CFF2 fs:25px][fs:20px]=!currentIndex?(index)> 
				<span> "Done"
		<div[h:468px bgc:#51576D pl: 35px pt:30px]>
			for item in currentList
				<task props={...item}>
			<input type="checkbox" bind=input.data.completed? .checkbox-input id="checkbox">
			<label for="checkbox">
				<span .checkbox> 
			<input[w:200px ml:20px mt:-7px c:#A5ADCE bgc:#51576D rd:5px bgc@focus:#404459 p@focus:5px] bind=input.data.task placeholder="Enter a task here...">

