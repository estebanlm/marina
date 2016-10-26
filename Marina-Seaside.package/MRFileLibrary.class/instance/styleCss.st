styling
styleCss
	^ '
.mdl-navigation__link.is-active {
	font-weight: 700;
}

.screen-content { 
	margin : 32px;
	color: rgba(0,0,0,.54);
 }
	
.mdl-layout__drawer { 
	background-color: white
 }

.mdl-cell { 
	text-align: center;
}

pre {
	margin: 0px -32px;
	background-color: #eee;
	color: rgb(0,0,0);
	padding: 5px 20px;
}

pre:hover { 
	background-color: rgba(0,0,0,0.1);
 }

.centered-content { 
	margin-left: auto;
	margin-right: auto;
	width: intrinsic;           /* Safari/WebKit uses a non-standard name */
	width: -moz-max-content;    /* Firefox/Gecko */
	width: -webkit-max-content; /* Chrome */
}

.mdl-layout{
	max-height: 100vh;
	overflow-y: hidden;
}
.mdl-layout__content { 
	overflow: scroll;
}

.grid-cell-demo { 
	min-height: 100px; 
	background-color: #bdbdbd;
	color: #fff;
	padding-left: 8px;
	padding-top: 4px;
	text-align: left; }
	
.navigation { 
	margin: 75px 0px;
	border-left: solid 3px #C0EbF1;
	padding-left: 20px;
	line-height: 28px;
	list-style-type: none;
	letter-spacing: 0;
 }

.navigation a { 
	font-weight: 400;
	color: #00BCD4;
	font-size: 16px;
	letter-spacing: 0;
	text-decoration: none;
 }

.section-title {
	margin-top: 100px; 
	font-size: 16px;
	font-weight: bold;
	color: rgba(0,0,0,0.54);
	letter-spacing: -.02em;
	text-transform: uppercase;
}

.menu-container { 
	width: 200px;
}

.menu-bar { 
	padding: 16px;
	position: relative;
}

.menu-background { 
	height: 148px;
	background-color: white;
}

.mdl-card-poll-demo { 
	margin:auto;
	margin-top: 20px;
	margin-bottom: 20px;
}

.mdl-card-poll-demo .mdl-card__title { 
background-color: rgb(63,81,181);
color: white;
}

.mdl-card-poll-demo .mdl-card__supporting-text { 
	margin: auto;
}

div.centered-content {
	width: 90%;
}

table.mdl-data-table {
	width: 100%;
	border: 0px; 
}

.mdl-data-table th {
	text-align: center;
}

.mdl-data-table td { 
	text-align: left;
}

strycture_type { width: 35px; }
structure_title {  min-width: 180px; }
structure_local_path {  min-width: 180px; }
structure_published { width: 40px; }
column_options { width: 80px }'