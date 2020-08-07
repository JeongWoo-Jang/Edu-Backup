<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <div
     id="frogue-container"
     class="position-right-bottom"
     data-chatbot="e4957de9-dad9-448d-a709-e43eeb644f63"
     data-user="사용자ID"
     data-init-key="value"
 ></div>
 <script>
     (function (d, s, id) {
         var js,
             fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {
             return;
         }
         js = d.createElement(s);
         js.id = id;
         js.src =
             "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
         fjs.parentNode.insertBefore(js, fjs);
     })(document, "script", "frogue-embed");
 </script>