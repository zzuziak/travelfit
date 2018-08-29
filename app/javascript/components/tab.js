function tabs() {
  console.log("ddscx");
// $('a[data-toggle="tab"]').on(function(e) {
//      var hash = $(this).attr("href");
//      console.log(hash)
//      location.hash = hash;
// });

// $(function() {
//     var hash = window.location.hash;
//     console.log(hash)
//     var $nav = $('ul.nav a[href="' + hash + '"]');
//     hash && $nav.trigger('click');
// });
let tabs = document.getElementById("append");
if (tabs){
  $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
    const hash = e.target.getAttribute('href')
    window.location = hash
  })
  var hash = window.location.hash;
  $('a[href="' + hash + '"]').tab('show');}
}
//
export { tabs };
