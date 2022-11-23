function iter$__(a){ let v; return a ? ((v=a.toIterable) ? v.call(a) : a) : a; };;
function defineName$__(cls,name){
	Object.defineProperty(cls,"name",{value:name,configurable:true});
};
import {use_dom_bind as imba_use_dom_bind, styles as imba_styles, Component as imba_Component, createComponent as imba_createComponent, createElement as imba_createElement, createIndexedList as imba_createIndexedList, defineTag as imba_defineTag} from 'imba';
(imba_use_dom_bind());
const $__init__$ = Symbol.for('#__init__'), $__patch__$ = Symbol.for('#__patch__'), $beforeReconcile$ = Symbol.for('#beforeReconcile'), $$up$ = Symbol.for('##up'), $afterVisit$ = Symbol.for('#afterVisit'), $afterReconcile$ = Symbol.for('#afterReconcile');
var $6 = Symbol(), $14 = Symbol(), $15 = Symbol(), $26 = Symbol(), $29 = Symbol();

/*body*/
import {isTemplateHead} from 'typescript';
import {Form} from 'imba-inertia-adapter';

class TaskListComponent extends imba_Component {
	[$__patch__$]($$ = {}){
		var $1;
		($1 = $$.activeΦ) !== undefined && (this.activeΦ = $1);
		($1 = $$.activeList) !== undefined && (this.activeList = $1);
		($1 = $$.doneList) !== undefined && (this.doneList = $1);
		
	}
	[$__init__$]($$ = null,deep = true){
		var $2;
		super[$__init__$](...arguments);
		this.activeΦ = ($$ && ($2 = $$.activeΦ) !== undefined) ? ($2) : true;
		this.activeList = ($$ && ($2 = $$.activeList) !== undefined) ? ($2) : [];
		this.doneList = ($$ && ($2 = $$.doneList) !== undefined) ? ($2) : [];
		
	}
	setup(){
		
		console.log("props",this.props);
		return this.form = new Form(
			{task: 'mail@mail.com',
			count: 'password',
			completedΦ: false}
		);
	}
	
	get currentList(){
		
		return this.activeΦ ? this.activeList : this.doneList;
	}
	
	render(){
		var $3, $4, $5, $7 = this._ns_ || '', $8, $9, $10, $11, $12, $13, $16, $17, $18, $21, $22, $23, $25, $27, $28, $30, $31, $32, $33;
		$3=this;
		$3[$beforeReconcile$]();
		($4=$5=1,$3[$6] === 1) || ($4=$5=0,$3[$6]=1);
		((!$4||$5&2) && $3.flagSelf$('z106skjy-ag'));
		$4 || ($8=imba_createElement('div',$3,`z106skjy-ah ${$7}`,null));
		$4 || ($9=imba_createElement('div',$8,`z106skjy-ai tab ${$7}`,null));
		$4 || ($10=imba_createElement('span',$9,`${$7}`,"Active"));
		;
		;
		$4 || ($11=imba_createElement('div',$8,`z106skjy-ak tab ${$7}`,null));
		$4 || ($12=imba_createElement('span',$11,`${$7}`,"Done"));
		;
		;
		;
		($13=$3[$14]) || ($3[$14]=$13=imba_createElement('div',$3,`z106skjy-am ${$7}`,null));
		($16 = $3[$15]) || ($3[$15]=$16=imba_createIndexedList(128,$13));
		$17 = 0;
		$18=$16.$;
		for (let $19 = 0, $20 = iter$__(this.currentList), $24 = $20.length; $19 < $24; $19++) {
			let item = $20[$19];
			($22=$23=1,$21=$18[$17]) || ($22=$23=0,$18[$17]=$21=imba_createComponent('task',$16,`${$7}`,null));
			$22||($21[$$up$]=$16);
			$22 || ($21.props={...item});
			$22 || !$21.setup || $21.setup($23);
			$21[$afterVisit$]($23);
			$17++;
			
		};$16[$afterVisit$]($17);;
		($27=$28=1,$25=$3[$26]) || ($27=$28=0,$3[$26]=$25=imba_createElement('input',$13,`checkbox-input ${$7}`,null));
		$27 || ($25.type="checkbox");
		$30=$3[$29] || ($3[$29]=$25.bind$('data',[null,'completedΦ']));
		$30[0]=this.form.data;
		$27 || ($25.id="checkbox");
		$27 || !$25.setup || $25.setup($28);
		$25[$afterVisit$]($28);
		;
		$4 || ($31=imba_createElement('label',$13,`${$7}`,null));
		$4 || ($31.set$('for',"checkbox"));
		$4 || ($32=imba_createElement('span',$31,`checkbox ${$7}`,null));
		;
		;
		$4 || ($33=imba_createElement('input',$13,`z106skjy-ar ${$7}`,null));
		$4 || ($33.placeholder="Enter a task here...");
		;
		;
		$3[$afterReconcile$]($5);
		return $3;
	}
	static {
		defineName$__(this,'task-list');}
}; imba_defineTag('task-list',TaskListComponent,{cssns: 'z106skjy_af',cssid: 'z106skjy-af'});


imba_styles.register('z106skjy',`
input.z106skjy_af:focus, textarea.z106skjy_af:focus {
--ol_s:solid;--ol_w:1px;--ol_o:0px; --ol_c:transparent;
outline:var(--ol_w) var(--ol_s) var(--ol_c); outline-offset:var(--ol_o);
outline:1px solid transparent; outline-offset:var(--ol_o);
}


span.z106skjy_af:not(#_) {color: hsla(230.00,61.76%,86.67%,1);
font-size: 20px;}

input.z106skjy_af:not(#_)::placeholder {color: hsla(228.29,29.50%,72.75%,1);
font-size: 18px;}
input.z106skjy_af:not(#_):-ms-input-placeholder {color: hsla(228.29,29.50%,72.75%,1);}
input.z106skjy_af:not(#_)::-ms-input-placeholder {color: hsla(228.29,29.50%,72.75%,1);}
textarea.z106skjy_af:not(#_):focus,input.z106skjy_af:not(#_):focus {--ol_w: 1px;}
textarea.z106skjy_af:not(#_):focus::placeholder,input.z106skjy_af:not(#_):focus::placeholder {color: hsla(0.00,0.00%,100.00%,0%);}

.z106skjy-ag:not(#_):not(#_):not(#_) {overflow: hidden;
border-radius: 8px;}

.z106skjy-ah:not(#_):not(#_):not(#_) {height: 35px;
display: flex;
flex-direction: row;}

.z106skjy-ai:not(#_):not(#_):not(#_) {height: 35px;
width: 125px;
text-align: center;
padding-top: 7px;
border-top-right-radius: 8px;
border-top-left-radius: 8px;}

.z106skjy-ai:not(#_):not(#_):not(#_) {background-color: hsla(227.14,14.74%,37.25%,1);}

.z106skjy-ak:not(#_):not(#_):not(#_) {height: 35px;
width: 125px;
text-align: center;
padding-top: 7px;
border-top-right-radius: 8px;
border-top-left-radius: 8px;}

.z106skjy-am:not(#_):not(#_):not(#_) {height: 468px;
background-color: hsla(227.14,14.74%,37.25%,1);
padding-left: 35px;
padding-top: 30px;}

.z106skjy-ar:not(#_):not(#_):not(#_) {width: 200px;
margin-left: 20px;
margin-top: -7px;
color: hsla(228.29,29.50%,72.75%,1);
background-color: hsla(227.14,14.74%,37.25%,1);}

task-list { display:block; }
`);