$(document).ready(function () {

    $('span.price').each(function () {

        $(this).text(removeComma($(this).text()));

    });
    $('span.price').each(function () {
  
        $(this).text(addComma($(this).text()));
       
    });

  

    $(".price").blur(function () {

        if (this.value.length <= 0) {
            $(this).removeClass("counting-input dirty");
            $(this).addClass("counting-input");
        }
 
     
                    return this.value = addComma(this.value);

                });
      
    $(".price").focus(function () {
   
        $(this).removeClass("counting-input");
        $(this).addClass("counting-input dirty");
                    return this.value = removeComma(this.value);
                });
            });
       
        

            function addComma(str) {
       
                var objregex = new RegExp('(-?[0-9]+)([0-9]{3})');

                while (objregex.test(str)) {
                    str = str.replace(objregex, '$1,$2');
                }
   
                if (str.length>0) {
                    return str + ' ریال ';
                }
                else
                {
                    return str ;
                }
             


            }

            function removeComma(str) {

                str = str.replace(/,/g, '');
                str = str.replace(' ریال ', '');
                return str;
            }

            $(".price").keydown(function (e) {
                // Allow: backspace, delete, tab, escape, enter and .
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                    // Allow: Ctrl+A
                    (e.keyCode == 65 && e.ctrlKey === true) ||
                    // Allow: Ctrl+C
                    (e.keyCode == 67 && e.ctrlKey === true) ||
                    // Allow: Ctrl+X
                    (e.keyCode == 88 && e.ctrlKey === true) ||
                    // Allow: home, end, left, right
                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                    // let it happen, don't do anything
                    return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                }
            });