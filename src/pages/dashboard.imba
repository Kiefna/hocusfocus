import "./timer.imba"
import { faFlagCheckered, faPersonRunning, faFlag} from '@fortawesome/free-solid-svg-icons'
import { library, dom, config } from '@fortawesome/fontawesome-svg-core'

# Font Awesome SVG core watchers
config.searchPseudoElements = true
library.add(faPersonRunning, faFlagCheckered, faFlag)
dom.i2svg!
dom.watch!

global css html
	ff:roboto
	.container
		bgc:#414559 rd:xl of:hidden
	body
		bgc: #303446 p: 20px
	.btn-spinner
		fs: 10px
		pos: relative;
		text-indent: -9999em
		bt: 0.2em solid white
		br: 0.2em solid white
		bb: 0.2em solid white
		bl: 0.2em solid transparent
		transform: translateZ(0)
		animation: spinning 1s infinite linear

	@keyframes spinning
		0% transform: rotate(0deg);
		100% transform: rotate(360deg);
	
	.checkbox-input
			d: none
			&:checked + label .checkbox
				&:after 
					transform: translate(-50%, -50%) scale(1)

	.checkbox
		bd: 2px solid #C6D0F5 rd: 3px w: 16px h: 16px d: inline-block pos: relative
		&:after
			content: '' d: block pos: absolute t: 50% l: 50% transform: translate(-50%, -50%) scale(0) w: 12px h: 12px bgc: #C6D0F5 transition: 0.3s

css
	nav
		pos:relative d:flex fld:row p:2 @lg:3 g:15px
		.hf-btn
			all: unset rd:10px p: 5px 40px 5px 40px fs: 20px c:#303446 fw: 500 bgc: #C8CFF2 h: 29px mt: 17px
			&:nth-of-type(1)
				ml: auto;

tag dashboard-page
	def render 
		<self>
			<nav>
				<logo>
				<inertia-button-link.hf-btn href="/login" method="delete"> "Logout"
				<button.hf-btn> "Register"
			
			<div[d:flex fld:row g:20px mt:20px]>
				<div[flb:60% d:flex fld:column g:20px]>
					<div.container[h:300px]>
						<timer.container [h:300px]>
					<div.container[h:200px]>
				<div[bgc:#414559 flb:40% h:500px rd:lg]>
					<task-list>
