import { Form } from 'imba-inertia-adapter'

tag task
	prop props
	# prop active? = true
	# prop activeList = []
	# prop doneList = []
	
	def setup
		console.log "props", self.props
		self.form = new Form
			task: 'mail@mail.com'
			count: 'password'
			completed?: false

	css
		span
			c:#C8CFF2 fs:20px
		input
			&::placeholder
				color: #A5ADCE
				fs: 18px

			&:-ms-input-placeholder
				color: #A5ADCE

			&::-ms-input-placeholder
				color: #A5ADCE

	<self>
		<h3> "blah"
			<input type="checkbox" bind=form.data.completed? .checkbox-input id="checkbox">
			<label for="checkbox">
				<span .checkbox> 
			<input[w:200px ml:20px mt:-7px c:#A5ADCE bgc:#51576D] placeholder="Enter a task here...">

	