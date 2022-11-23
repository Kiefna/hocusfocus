import { Form } from 'imba-inertia-adapter'

tag login-page

	def setup
		console.log "props", self.props
		self.form = new Form
			email: 'mail@mail.com'
			password: 'password'
			remember: true

	def render
		<self[h:100%]>
			<div[d:flex jc:center ai:center g:20px mt:20px h:100%]>
				<div[width: 450px d:flex jc:center fld:column g:20px ta: center mt:-95px]>
					<logo[mt:10px]>
					<div.container[ta:center]>
						<h1[c:#C6D0F5 mb: 10px]> "Welcome Back!"
						<div[mx:auto mt:6px w:100px bd:2px solid #C6D0F5 mb:27px]/>
						<form[mt:8px bgc:#51576D r:lg shadow:xl of:hidden mb:0 pl:15px pr:15px] @submit.prevent=form.submit("post", "/login")>
							<div[px:10px py:12px ta:left]>
								<text-input[mt:10px] bind=form.data.email error=form.errors.email label="Email:" type="email" autofocus autocapitalize="off" />
								<text-input[mt:6px] bind=form.data.password error=form.errors.password label="Password:" type="password" />
								<label[mt:6px us:none d:flex ai:center] for="remember">
									# <input[mr:1px].checkbox-input id="remember" bind=form.data.remember type="checkbox" />
									# <span[fs:sm ml:4px c:#C6D0F5]> "Remember Me"
									<input type="checkbox" bind=form.data.remember .checkbox-input id="checkbox">
									<label for="checkbox">
										<span .checkbox> 
											<div[w:150px ml:20px mt:-2px c:#C6D0F5]> "Remember Me?"
								
							<div[h:73px ta:right mb: 10px]>
								<loading-button[ml:auto bgc:indigo5] loading=form.processing type="submit"> "Login"
			# <div[min-height:screen p:6px bgc:indigo8 d:flex jc:center] .items-center>
			# 	<div[w: 100% max-width:50%]>
			# 		<logo [d:block mx:auto w:100% max-width:xs bgc:white h:50px] />
			# 		<form[mt:8px bgc:white r:lg shadow:xl of:hidden] @submit.prevent=form.submit("post", "/login")>
			# 			<div[px:10px py:12px]>
			# 				<h1[ta:center fw:bold fs:3xl]> "Welcome Back!"
			# 				<div[mx:auto mt:6px w:24px bdb:2px]/>
			# 				<text-input[mt:10px] bind=form.data.email error=form.errors.email label="Email" type="email" autofocus autocapitalize="off" />
			# 				<text-input[mt:6px] bind=form.data.password error=form.errors.password label="Password" type="password" />
			# 				<label[mt:6px us:none] .mt-6.select-none.flex.items-center for="remember">
			# 					<input[mr:1px] id="remember" bind=form.data.remember type="checkbox" />
			# 					<span[fs:sm]> "Remember Me"
							
						
			# 			<div[px:10px py:10px bgc:gray1 bdt:1px bc:gray1 d:flex] .px-10.py-4.bg-gray-100.border-t.border-gray-100.flex>
			# 				<loading-button[ml:auto bgc:indigo5] loading=form.processing type="submit"> "Login"
			
		
	