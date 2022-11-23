tag timer
	# back to front
	startingOrder = [1, 2, 1, 2, 1, 2, 1, 3]
	order = [...startingOrder]
	iconSort = {1: "fa-person-running", 2: "fa-flag", 3: 'fa-flag-checkered'}
	textSort = {1: "Work", 2: "Break", 3: 'Rest'}

	prop time = 0
	prop step = 50
	prop duration = 5000
	prop current = order.shift!
	prop isRunning? = false

	def mount
		getTime!
		imba.commit!

	def toDecimal n\number, fixed\number
		re = new RegExp('^-?\\d+(?:\.\\d{0,' + (fixed || -1) + '})?')
		n.toString!.match(re)[0]

	def runTimer
		#interval = setInterval(&, step) do
			if time > 0
				time = time - step
				imba.commit!
			else
				current = order.shift!
				getTime!

	def stopTimer do #interval && clearInterval(#interval)
	def resetTimer do time = 0
	def toggleTimer 
		isRunning? ? stopTimer! : runTimer!
		isRunning? = !isRunning?

	def getTime
		switch current
			when 1
				time = 5000
			when 2
				time = 10000
			when 3
				time = 15000

	get minutes
		if (time / 1000 / 60) < 10
			"0" + toDecimal((time / 1000 / 60), 0)
		else 
			toDecimal((time / 1000 / 60), 0)
	get seconds 
		if ((time / 1000) % 60) < 10
			"0" + toDecimal(((time / 1000) % 60), 0)
		else 
			toDecimal(((time / 1000) % 60), 0)
	get currentIndex? 
		do(i\number) startingOrder.length - order.length - 1 === i
	
	css
		button
			all: unset rd:15px p: 15px 70px 15px 70px fs: 25px c: #52576B td: none fw: 500
		span
			c:#C8CFF2 pl:10px fs:20px
	
	<self>
		<div[h:35px d:flex fld:row jc:space-evenly]>
			for phase, index in startingOrder
				<div.tab[h:35px flg:1 ta:center pt:7px rdtr: xl rdtl: xl][bgc:#51576d]=currentIndex?(index)>
					<i.fas.{iconSort[phase]}[c:C8CFF2 fs:25px][fs:20px]=!currentIndex?(index)> 
					<span[d:none]=!currentIndex?(index)> textSort[phase]
		<div[h:265px bgc:#51576D ta:center]>
			<h1[m:0 c:#C8CFF2 fs:80px fw:500 pt:15px]> "{minutes}:{seconds}"
			<button[bgc:#AFD090]=!isRunning? [bgc:#92A9E8]=isRunning? @click=toggleTimer!> isRunning? ? "PAUSE" : "START"