$.fn.addZoomControll = function() {
  
          this.each(function() {

            $image = $(this).find("img").first();
            $(this).append("<div style='text-align: center' class='buttons'>\
                <button class='zoom-out'>-</button>\
                <input style='vertical-align: middle' type='range' class='zoom-range'>\
                <button class='zoom-in'>+</button>\
              </div>");
            $image.panzoom({
          $zoomIn: $(this).find(".zoom-in"),
                $zoomOut: $(this).find(".zoom-out"),
                $zoomRange: $(this).find(".zoom-range")
            });
          });
      };