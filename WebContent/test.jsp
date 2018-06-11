<style>
html, body {
            height: 100%;
            margin: 0;
        }
        .wrapper {
            width: 100%;
            height: 100%;
            margin: auto;
            overflow-x: hidden;
            position: relative;
            background: #263729;
        }

        .page {
            width: 100%;
            background: #992213;
            position: absolute;
            top:0;
            left: 0;
            height: 900px;
        }
        #page-1 {
            background: #0C717A;
        }
        #page-2 {
            background: #009900;
            left:100%;
        }
        #page-3 {
            background: #0000FF;
            left: 200%;
        }
a {
    color:#FFF;
}
</style>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
function scrollSections() {
    jQuery('a.scrollitem').click(function () {
        jQuery('a.scrollitem').removeClass('selected');
        jQuery(this).addClass('selected');
        jQuery('.toggle').css({'display':'none'});
        jQuery('.wrapper').scrollTo(jQuery(this).attr('href'), 1200, function(){
            jQuery('.toggle').css({'display':'block'});
        });
        return false;
    });
}
scrollSections();
</script>

<div class="wrapper">
    <div id="page-1" class="page">
        <a href="#page-1" class="scrollitem selected">page 1</a>
        <a href="#page-2" class="scrollitem">page 2</a>
        <a href="#page-3" class="scrollitem">page 3</a>

        <h3>page 1</h3>
    </div>
    <div id="page-2" class="page">
        <a href="#page-1" class="scrollitem selected">page 1</a>
        <a href="#page-2" class="scrollitem">page 2</a>
        <a href="#page-3" class="scrollitem">page 3</a>
        <h3>page 2</h3>
    </div>
    <div id="page-3" class="page">
        <a href="#page-1" class="scrollitem selected">page 1</a>
        <a href="#page-2" class="scrollitem">page 2</a>
        <a href="#page-3" class="scrollitem">page 3</a>
        <h3>page 3</h3>
    </div>
</div>