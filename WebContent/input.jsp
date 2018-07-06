<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>bootstrap4</title>
<!--     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
 
  </head>
  <body>
    <div id="summernote"></div>
    
    <script>
  

      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 500, 
        width:1000,
        focus:true,
        callbacks : {
      
            onImageUpload : function(files, editor, welEditable) {
            	alert("??");
            	for(var i=0; i<files.length; i++ ){
            		alert(i);	
                sendFile(files[i], this);}
            },  
            
        }
      });
      
      function sendFile(file, editor) {
    	
          var data = new FormData();
          data.append("uploadFile", file);
          console.log(file);
         
          $.ajax({
        	   
             data : data,
             type : "POST",
             url : "upload.su",
             cache : false,
             contentType : false,
                         processData : false,
             success : function(data) {
              console.log(data.url);
              
                
                $(editor).summernote('editor.insertImage', data.url);
                
              
             },
             error: function(data) {
            	 console.log(data);
             }
          
          });
       }
    </script>
  </body>
</html> 
