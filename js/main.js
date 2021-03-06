$(function(){

  function updatePage(page_id) {
    var updatePageValues = {
      ":title" : $("#inputPageTitle").val(),
      ":body" : $("#inputPageBody").val(),
      ":path" : $("#inputPageUrl").val(),
      ":menu_link_title" : $("#inputMenuName").val(),
      ":menu_link_path" : $("inputPageUrl").val(),
      ":pid" : page_id
    };
    $.ajax({
      url:"php/save_content.php",
      dataType:"json",
      data: {
        "update_page" : updatePageValues
      },
      success: function(data) {
        console.log("updatePageValues success: ", data);

      },
      error: function(data) {
        console.log("updatePageValues error: ", data.responseText);
      }
    });
    return false;
  }

  $(".pageForm").submit(function() {
    console.log("form pageData: ", $(this).data("pageData"));
    if ($(this).data("pageData")) {
      updatePage($(this).data("pageData").pid);
    }
    else {
      insertPage();
    }
    return false;
  });

  function insertPage() {
    var uploadPage = {
      ":title" : $("#inputPageTitle").val(),
      ":body" : $("#inputPageBody").val(),
    };
    console.log("uploadPage: ", uploadPage);
      $.ajax({
        url: "php/save_content.php",
        dataType: "json",
        data: {
          "page_info" : uploadPage
        },
        success: function(data) {
          saveUrlAlias();
          console.log("upload success: ", data);
         
        },
        error: function(data) {
          console.log("upload error: ", data.responseText);
        }
      });
    
      return false;
  }

  function saveUrlAlias () {
    var urlValue = {
      ":path" : $("#inputPageUrl").val(),
    };
    console.log("urlValue: ", urlValue);
    $.ajax({
      url: "php/save_content.php",
      dataType: "json",
      data: {
     
      "menu_data" : urlValue
      },
      success: function(data) {
        console.log("saveUrlAlias success: ", data);
        saveNewMenuLink();
        
      },
      error: function(data) {
        console.log("saveUrlAlias error: ", data.responseText);
      }
    });
    return false;
  }

  function saveNewMenuLink() {
    var newMenuLink = {
      ":menu_link_title" : $("#inputMenuName").val(),
      ":menu_link_path" : $("#inputPageUrl").val(),
      ":menu_link_menu" : "my-menu-machine-name",
      ":menu_link_plid" : $("select option:selected").val(),
      ":menu_link_weight" : $("#menu_weight").val()

    };
      console.log("newMenuLink: ", newMenuLink);
    $.ajax({
      url: "php/save_content.php",
      dataType: "json",
      data: {
        "menu_link" : newMenuLink
      },
      success: function(data) {
          console.log("saveNewMenuLink success: ", data);
          
      },
        error: function(data) {
          console.log("saveNewMenuLink error: ", data.responseText);
      }
    });
    return false;
  }

  
getTheFooter();
//getImages();

});


function getAllMenuLinks (activePath) {
  $.ajax({
    url: "php/get_menu_content.php",
    dataType: "json",
    success: function(data) {
      console.log("getAllMenuLinks success: ", data);
      createAdminSelect (data);
      createMenu(data);
      $('a[href="'+activePath+'"]').parent("li").addClass('active');

    },
    error: function(data) {
      console.log("getAllMenuLinks error: ", data.responseText);
    }
  });
  return false;
}

// function getImages () {
//   $.ajax({
//     url: "php/get_images.php",
//     dataType: "json",
//     success: function(data) {
//       console.log("getImages success: ", data);
//       createImagesSelect(data);

//     },
//     error: function(data) {
//       console.log("getImages error: ", data.responseText);
//     }
//   });
//   return false;
// }

function getTheFooter () {
  $.ajax ({
    url: "php/get_footer.php",
    dataType: "json",
    success: function(data) {
      console.log("getTheFooter success: ", data);
      for (var i = 0; i < data.length; i++) {
        var footerData = $("<p class='footerContent'/>");

        footerData.append("<p><strong>Contact info:</strong></p>");
        footerData.append("<p><strong>Name:</strong> "+data[i].name+"</p>");
        footerData.append("<p><strong>Email:</strong> "+data[i].email+"</p>");
        footerData.append("<p><strong>Phone number:</strong> "+data[i].phone+"</p>");
        footerData.append("<p><strong>Street:</strong> "+data[i].street+"</p>");
        footerData.append("<p><strong>Postalcode:</strong> "+data[i].postalcode+"</p>");
        footerData.append("<p><strong>City:</strong> "+data[i].city+"</p>");

        $("footer .footerData").append(footerData);
      }
    },
    error: function(data) {
      console.log("getTheFooter error: ", data.responseText);
    }
  });
  return false;
}