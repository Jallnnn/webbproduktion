function createAdminSelect (data) {
	var menuTree = buildMenuTreeStructure(data);


	var selectInHtml = $("<select class='form-control'></select>");


	var options = $("<option>Top</option>");


	options.data("menuData", {mlid: null, menu: "my-menu-machine-name"});
	selectInHtml.append(options);

	selectInHtml = buildOptions(selectInHtml, menuTree, 0);

	$(".pageForm .menuSelectMenu").html(selectInHtml);

}


function buildOptions (selectInHtml, menuItem, level) {

	for (var i = 0; i < menuItem.length; i++) {
		var levelIndi = "-";

		for (var j = 0; j < level; j++) {
			levelIndi += "-";
		}

		var menuOptions = $('<option value="'+menuItem[i].mlid+'">'+levelIndi+" "+menuItem[i].title+'</option>');


		menuOptions.data("menuData", menuItem[j]);


		selectInHtml.append(menuOptions);

		if (menuItem[i].children.length > 0) {
			selectInHtml = buildOptions (selectInHtml, menuItem[i].children, level+1);
		}

	}
	return selectInHtml;
}


function buildMenuTreeStructure (menuLinksData) {
	var menuTree = [];
	var hashMap = {};


	menuLinksData.forEach(function(itemsInArray) {

		itemsInArray.children = [];


		hashMap["_"+itemsInArray.mlid] = itemsInArray;


		if (!itemsInArray.plid) {
			menuTree.push(itemsInArray); // fträd
		}
	});

	for (var i in hashMap) {
		var aLink = hashMap[i];


		if (aLink.plid) {
			hashMap["_" + aLink.plid].children.push(aLink);
		}
	}

	
	console.log("menuTree: ", menuTree);
	return menuTree;
}


function createMenu (data) {
	var menuTree = buildMenuTreeStructure(data);

	var myMenu = $("<ul class='nav navbar-nav'></ul>");

	buildMenu(myMenu, menuTree);

	$(".navbar-nav").not(".sign-in").remove();
	$("header .navbar-collapse").prepend(myMenu);

}


function buildMenu (menuToHtml, menuItem) {

	for (var i = 0; i < menuItem.length; i++) {
		var menuLinkObject;

		if (menuItem[i].children.length < 1) {
			menuLinkObject = $('<li><a href="'+menuItem[i].path+'">'+menuItem[i].title+'</a></li>');
		}
		else {

			menuLinkObject = $('<li class="dropdown"><a href="'+menuItem[i].path+'">'+menuItem[i].title+'</a></li>');

			var subMenu = $('<ul class="dropdown-menu"></ul>');
			
			buildMenu(subMenu, menuItem[i].children);

			menuLinkObject.prepend(subMenu);

			console.log(menuLinkObject);

		}
		menuToHtml.append(menuLinkObject);
	}
	return menuToHtml;
}

