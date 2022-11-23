import {createDynamic as imba_createDynamic, getRenderContext as imba_getRenderContext, mount as imba_mount} from 'imba';
var $4 = Symbol(), $7 = Symbol();
const $getRenderContext$ = Symbol.for('#getRenderContext'), $$up$ = Symbol.for('##up'), $isRichElement$ = Symbol.for('#isRichElement'), $afterVisit$ = Symbol.for('#afterVisit');

/*body*/
import {createInertiaApp} from 'imba-inertia-adapter';

import './pages/index';
import './components/index';

createInertiaApp(
	{resolve: function(name) { return name; },
	setup: function({el: el,App: App,props: props}) {
		var $1, $2, $3 = imba_getRenderContext(), $5, $6;
		
		return imba_mount(($1=$3[$getRenderContext$]($4),
		($5=$6=1,$2=$1.run(App)) || ($5=$6=0,$1.cache($2=imba_createDynamic($1.value,null,null,null))),
		$5 || ($2[$$up$]=$3._),
		($2[$isRichElement$] && (
		(props===$2[$7] || ($2.props=$2[$7]=props)),
		$5 || $3.sym || !$2.setup || $2.setup($6),
		$3.sym || $2[$afterVisit$]($6))),
		$2));
	}}
);
