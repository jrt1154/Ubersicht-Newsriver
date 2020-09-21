format = '%d %A %R'

command: "newsriver.widget/src/outPutFeed"

# the refresh frequency in milliseconds
refreshFrequency: "30m"

render: (output) -> """
<div class='container'><marquee scrollamount="3" scrolldelay="5" truespeed="90" id='ticker' class='ticker'>#{output}</marquee></div>
"""

style: """
    left: 0px
    top: 0px
    color: #fff
    font-family: 'M+ 1p'
    z-index: 2
    
    width:100%;
    
    .container div {
    	-webkit-transform:translateX(100%)
    	transform:translateX(100%)
    	-webkit-animation: scroll 15s linear infinite
    	animation: scroll 15s linear infinite
    }
    
    marquee {
	    padding-top:0.8em;
		padding-bottom:0.8em;
		background: rgba(#111, .8)
		color: #0bf
    }
    
    marquee span {
	    -webkit-animation: bulletflash 1s infinite
    }
    
    marquee span::after {
	    content:' • '
    }
    
    marquee span:last-child::after {
	    content:''
    }
    
    a {
	    color: #fff !important
	    text-decoration:none
    }
    
    a:hover {
	    color: rgba(#0bf, 1) !important
    }
    
    h3 {
	    display:none
    }
    
@-webkit-keyframes scroll {
    		0%   { -webkit-transform: translateX(100%); }
    		100% { -webkit-transform: translateX(-100%); }
    	}
@keyframes scroll {
 0%   {
 -webkit-transform: translateX(100%);
 transform: translateX(100%);
 }
 100% {
 -webkit-transform: translateX(-100%); /* Firefox bug fix */
 transform: translateX(-100%); 
 }
}
@-webkit-keyframes bulletflash { \n\
  0% { \n\
    color: rgba(#0bf, 0.5); \n\
  } \n\
  50% { \n\
    color: rgba(#0bf, 1); \n\
  } \n\
  100% { \n\
    color: rgba(#0bf, 0.5); \n\
  } \n\
}
@-webkit-keyframes borderflash { \n\
  0% { \n\
    border-color: rgba(#0bf, 0.5); \n\
  } \n\
  50% { \n\
    border-color: rgba(#0bf, 1); \n\
  } \n\
  100% { \n\
    border-color: rgba(#0bf, 0.5); \n\
  } \n\
}
"""