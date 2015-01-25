(function() {
  jQuery(document).ready(function() {
    jQuery('.star-rating').raty({
      readOnly: true,
      path: '/assets/images/',
      score: function() {
        return jQuery(this).attr('data-score');
      }
    });
    return jQuery('#star-rating').raty({
      path: '/assets/images/',
      scoreName: 'review[rating]'
    });
  });

}).call(this);
