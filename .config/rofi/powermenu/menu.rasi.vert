configuration {
    disable-history:                false;
    fullscreen:                     false;
	hide-scrollbar: 				true;
	sidebar-mode: 					false;
}

@import "colors.rasi"

* {
    background-color:               @background;
    text-color:                     @accent;
}

window {
    transparency:                   "real";
    border-radius:                  3px;
    width:                          480px;
	height:							180px;
    location:                       east;
    x-offset:                       -1200px;
    y-offset:                       0px;
}

listview {
    lines:							5;
    margin:                         0px;
    spacing:                        0px;
    cycle:                          true;
    dynamic:                        true;
    layout:                         horizontal;
}

mainbox {
    background-color:               @background;
    children:                       [ listview ];
}

element {
    background-color:               @background;
    text-color:                     @accent;
    orientation:                    vertical;
    border-radius:                  3px;
}

element-text {
	font:							"feather 20";
    expand:                         true;
    horizontal-align:               0.5;
    vertical-align:                 0;
    margin:                         -50px 0px 15px 0px;
}

element normal.urgent,
element alternate.urgent {
    background-color:               @urgent;
    text-color:                     @foreground;
    border-radius:                  3px;
}

element normal.active,
element alternate.active {
    background-color:               @background-alt;
    text-color:                     @foreground;
}

element selected {
    background-color:               @accent;
    text-color:                     @background;
    border:                  		0px;
    border-radius:                  3px;
    border-color:                  	@border;
}

element selected.urgent {
    background-color:               @urgent;
    text-color:                     @foreground;
}

element selected.active {
    background-color:               @background-alt;
    color:                          @foreground;
}
