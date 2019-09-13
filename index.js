$(function(){
    $('#testBtn').on('click',function(){
        $('#testDiv').html(cf.app + ':' + cf.url);
    });
	$('#tree').jstree({
		'core' : {
            "animation" : 0,
            "check_callback" : true,
            "themes" : { "stripes" : true },
			'data' : {
				"url" : "assets/lib/jstree/demo/basic/root.json",
				"dataType" : "json" // needed only if you do not supply JSON headers
			}
		},
        "types" : {
          "#" : {
            "max_children" : 1,
            "max_depth" : 4,
            "valid_children" : ["root"]
          },
          "root" : {
            "icon" : "fa fa-folder text-success",
            "valid_children" : ["default"]
          },
          "default" : {
            "icon" : "fa fa-folder text-dark",
            "valid_children" : ["default","file"]
          },
          "file" : {
            "icon" : "fa fa-file text-primary",
            "valid_children" : []
          }
        },
        "plugins" : [
          "contextmenu", "dnd", "search",
          "state", "types", "wholerow"
        ]
	});
});