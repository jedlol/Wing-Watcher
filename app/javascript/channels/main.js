/*
facebook

https://www.facebook.com/sharer.php?u=[post-url]

twitter:
https://twitter.com/share?url=[post-url]&text=[post-title]&via=[via]&hashtags=[hashtags]


pinterest
https://pinterest.com/pin/create/bookmarklet/?media=[post-img]&url=[post-url]&is_video=[is_video]&description=[post-title]


whatsapp
https://api.whatsapp.com/send?text=[post-title] [post-url]


*/


const facebookBtn = document.querySelector(".facebook-btn");
const twitterBtn = document.querySelector(".twitter-btn");
// const instagramBtn = document.querySelector(".instagram-btn");
const pinterestBtn = document.querySelector(".pinterest-btn");
const whatsappBtn = document.querySelector(".whatsapp-btn");

function init(){
    let postUrl = encodeURI(location.href);
    let postTitle = encodeURI("Hey everyone, check this out: ");

    facebookBtn.setAttribute("href",'https://www.facebook.com/sharer.php?u=${postUrl}');

    twitterBtn.setAttribute("href",'https://twitter.com/share?url=${postUrl}&text=${postTitle}&via=[via]&hashtags=[hashtags]' );
    
    // instagramBtn.serAttribute("href",'https://www.facebook.com/sharer.php?u=${postUrl}' );
    
    pinterestBtn.setAttribute("href",'https://pinterest.com/pin/create/bookmarklet/?media=[post-img]&url=${postUrl}&is_video=[is_video]&description=${postTitle}' );
    
    whatsappBtn.setAttribute("href",'https://api.whatsapp.com/send?text=${postTitle}${postUrl}' );

}
   init();