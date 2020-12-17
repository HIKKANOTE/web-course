/*
 * jQuery Html Editor Plugin for WYSIWYG Web Builder v8.x
 * Copyright Pablo Software solutions 2011
 * http://www.wysiwygwebbuilder.com/
 *
 */

(function($)
{
   $.fn.wwbeditor = function(options) 
   {
      var defaults = 
      {
         buttons: 
         {
         'undo': false,
         'redo': false,
         'bold': true,
         'italic': true,
         'underline': true,
         'strikethrough' : true,
         'justifyleft':true,
         'justifycenter':true,
         'justifyright':true,
         'justifyfull':true,
         'insertorderedlist':true,
         'insertunorderedlist':true,
         'indent':true,
         'outdent': true,
         'createLink': true,
         'unlink' :true,
         'insertimage' : true,
         'inserthorizontalrule': false,
         'cut': false,
         'copy': false,
         'paste': false,
         'forecolor': true,
         'hilitecolor': true,
         'br': true,
         'formatblock': true,
         'fontname': true,
         'fontsize': true
         }
      }; 

      var opts = $.extend(defaults, options);
      return this.each(function() 
      {   
         $.wwbeditor($(this), opts);
      });
   };

   var colorPickerOwner;
   var colorPickerVisible = false;
   var selectionRange;
 
   $.wwbeditor = function($textarea, options) 
   {
      var width = $textarea.width();
      var height = $textarea.height() - 4;
      var position = $textarea.position();

      var $container = $("<div class='wwbeditor' />").width(width);
      $container.insertAfter($textarea);

      var $iframe = $("<iframe/>").height(height).css('border-width', 0);
      $iframe.width(width);// - ($.browser.msie ? 4 : 4));

      options.iframe = $iframe;
      options.textarea = $textarea;
      options.id = $textarea.attr('id');

      createColorPicker();
      createToolbar($container);

      var $editor = $("<div/>").append($iframe);
      $editor.addClass('wwbeditor-content');
      $container.append($editor).append($textarea);

      $textarea.hide();

      var doc = $iframe[0].contentWindow.document;
      doc.designMode = 'on';
      doc.open();
      doc.write($textarea.val());
      doc.close();	

      $(doc.body).css({'margin':0,'padding':0});

      if ($textarea.css('position') == 'absolute')
      {
         $container.css('position', 'absolute');
         $container.css('left', position.left);
         $container.css('top', position.top);
      }
  
      height -= $container.find('.wwbeditor-toolbar').height();
      $iframe.height(height);
     
      var fnUpdateTextArea = function()
      {
         $textarea.val(doc.body.innerHTML);
      }
     
      $(doc.body).click(fnUpdateTextArea).
         blur(fnUpdateTextArea).
         keydown(fnUpdateTextArea).
         keyup(fnUpdateTextArea).
         mousedown(fnUpdateTextArea);

      function execCommand(command, showUI, value)
      {
         options.iframe[0].contentWindow.focus();
         options.iframe[0].contentWindow.document.execCommand(command, showUI, value);
         options.textarea.val(options.iframe[0].contentWindow.document.body.innerHTML);
      }

      function createToolbar($container)
      {
         var $toolbar = $('<div class="wwbeditor-toolbar" />');
         $toolbar.attr('unselectable', 'on');
			
         $.each(options.buttons, function(key, val)
         {
            if (val)
            {
               if (key == 'formatblock')
               {
                  var $formatblock = $('<select id="formatblock">' +
                     '<option value="<p>">Normal</option>' +
                     '<option value="<h1>">Heading 1 <h1></option>' +
                     '<option value="<h2>">Heading 2 <h2></option>' +
                     '<option value="<h3>">Heading 3 <h3></option>' + 
                     '<option value="<h4>">Heading 4 <h4></option>' +
                     '<option value="<h5>">Heading 5 <h5></option>' +
                     '<option value="<h6>">Heading 6 <h6></option>' +
                     '</select>');
                  $formatblock.change(function()
                  {
                     var value = $(this).find(":selected").val();
                     execCommand('formatBlock', false, value);
                  });
                  $toolbar.append($formatblock);
               }
               else
               if (key == 'fontname')
               {
                  var fonts = ["Arial", "Comic Sans MS", "Courier New", "Georgia", "Impact", "Sans Serif", "Serif", "Tahoma", "Times New Roman", "Trebuchet MS", "Verdana"];
                  var $fontname = $('<select id="fontname" />');
                  $.each(fonts, function(index, value) 
                  {    
                     $fontname.append($('<option />').attr('value', value).text(value));
                  });
                  $fontname.change(function()
                  {
                     var value = $(this).find(":selected").val();
                     execCommand('fontName', false, value);
                  });
                  $toolbar.append($fontname);
               }
               else
               if (key == 'fontsize')
               {
                  var sizes = ["1", "2", "3", "4", "5", "6", "7"];
                  var $fontsize = $('<select unselectable="on" id="fontsize" />');
                  $.each(sizes, function(index, value) 
                  {    
                     $fontsize.append($('<option />').attr('value', value).text(value));
                  });
                  $fontsize.change(function()
                  {
                     var value = $(this).find(":selected").val();
                     execCommand('fontSize', false, value);
                  });
                  $toolbar.append($fontsize);
               }
               else
               if (key == 'br')
               {
                  $toolbar.append('<br>');
               }
               else
               {
                  var $toolbutton = $('<img />');
                  $toolbutton.attr('src', './wwbeditor/images/' + key + '.png');
                  $toolbutton.attr('alt', key);
                  $toolbutton.attr('title', key);
                  $toolbutton.attr('unselectable', 'on');
                  $toolbutton.bind('click', function(evt)
                  {
                     if (key == 'insertimage' || key == 'createLink')
                     {
                        var url = prompt('Enter URL:', 'http://');
                        execCommand(key, false, url);
                     }
                     else
                     if (key == 'forecolor' || key == 'hilitecolor')
                     {
                        colorPickerOwner = this; 
                        showColorPicker(!colorPickerVisible);
                     }
                     else
                     {
                        execCommand(key, false, null);
                     }
                  });
                  $toolbar.append($toolbutton);
               }
            }
         });
         $toolbar.appendTo($container);
      }
   
      function createColorPicker()
      {
         options.colorpickerid = 'color_picker_' + options.id;
         $('#' + options.colorpickerid).remove();

         var colors = ['#000000', '#A52A00', '#004040', '#005500', '#00005E', '#00008B', '#4B0082', '#282828', '#8B0000', '#FF6820', '#8B8B00', '#009300', '#388E8E', '#0000FF', '#7B7BC0', '#666666', '#FF0000', '#FFAD5B', '#32CD32', '#3CB371', '#7FFFD4', '#7D9EC0', '#800080', '#7F7F7F', '#FFC0CB', '#FFD700', '#FFFF00', '#00FF00', '#40E0D0', '#C0FFFF', '#480048', '#C0C0C0', '#FFE4E1', '#D2B48C', '#FFFFE0', '#98FB98', '#AFEEEE', '#68838B', '#E6E6FA', '#FFFFFF'];
         var $colorpicker = $("<div class='wwbeditor-color_picker'/>");
         $colorpicker.attr('id', options.colorpickerid);
         $colorpicker.css('z-index', '2500');

         $.each(colors, function(i)
         {
            var $cell = $("<div class='wwbeditor-color_picker_cell'>&nbsp;</div>")
            $cell.css('background-color', this);
            $cell.bind('mouseover', function(e)
            { 
               $(this).css('border-color', '#598FEF'); 
            }); 
            $cell.bind("mouseout", function(e)
            { 
               $(this).css('border-color', '#000000');
            });
            $cell.bind("click", function(e)
            { 
               var value = $(this).css('background-color');
               var command = $(colorPickerOwner).attr("title");

               if (command == 'hilitecolor' && $.browser.msie)
                  command = 'backcolor';

               restoreSelection(selectionRange);
               execCommand(command, false, value);
               showColorPicker(false);
            });
            $cell.appendTo($colorpicker);
         });
         $("body").append($colorpicker); 
         $colorpicker.hide();
      }

      function saveSelection() 
      {    
         if (options.iframe[0].contentWindow.window.getSelection) 
         {        
            sel = options.iframe[0].contentWindow.window.getSelection();        
            if (sel.getRangeAt && sel.rangeCount) 
            {            
               return sel.getRangeAt(0);        
            }    
         } 
         else 
         if (options.iframe[0].contentWindow.document.selection && options.iframe[0].contentWindow.document.selection.createRange) 
         {        
            return options.iframe[0].contentWindow.document.selection.createRange();    
         }    
         return null;
      }

      function restoreSelection(range) 
      {    
         if (range) 
         {        
            if (options.iframe[0].contentWindow.window.getSelection) 
            {            
               sel = options.iframe[0].contentWindow.window.getSelection();            
               sel.removeAllRanges();            
               sel.addRange(range);        
            } 
            else 
            if (options.iframe[0].contentWindow.document.selection && range.select) 
            {            
               range.select();        
            }    
         }
      }

      function mousedownHandler(event)
      {
         var colorpicker = '#'+options.colorpickerid;
         var parent = $(event.target).parents(colorpicker).length;
         if (event.target == $(colorpicker)[0] || event.target == colorPickerOwner || parent > 0) return;
         showColorPicker(false);
      }
   
      function showColorPicker(visible)
      {
         var $colorpicker = $('#'+options.colorpickerid);
         if (visible)
         {
            selectionRange = saveSelection();
            $colorpicker.css('top',  $(colorPickerOwner).offset().top + $(colorPickerOwner).outerHeight());
            $colorpicker.css('left', $(colorPickerOwner).offset().left);
            $colorpicker.show();
            $(document).bind('mousedown',mousedownHandler);
         }
         else
         {
            $(document).unbind('mousedown', mousedownHandler);
            $colorpicker.hide();
         }
         colorPickerVisible = visible;
      }
   };
})(jQuery);