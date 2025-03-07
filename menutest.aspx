﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="menutest, App_Web_5yx2m0p2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
<style>
/* reset css */



html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block }

body { line-height: 1 }

ol, ul { list-style: none }

blockquote, q { quotes: none }

blockquote:before, blockquote:after, q:before, q:after {
  content: '';
  content: none
}

table {
  border-collapse: collapse;
  border-spacing: 0
}

body {
  font: 100% "roboto", "Trebuchet MS", sans-serif;
  background-color:#EF476F;
}

a { text-decoration: none; }

/**
 * Hidden fallback
 */


/**
 * Styling navigation
 */

header {
  margin-right: auto;
  margin-left: auto;
  max-width: 22.5rem;
  margin-top:150px;
  box-shadow: 0 3px 12px rgba(0, 0, 0, 0.25);
}

/**
 * Styling top level items
 */

.nav a, .nav label {
  display: block;
 padding: .85rem;
  color: #fff;
  background-color: #151515;
  box-shadow: inset 0 -1px #1d1d1d;
  -webkit-transition: all .25s ease-in;
  transition: all .25s ease-in;
}

.nav a:focus, .nav a:hover, .nav label:focus, .nav label:hover {
  color: rgba(255, 255, 255, 0.5);
  background: #030303;
}

.nav label { cursor: pointer; }

/**
 * Styling first level lists items
 */

.group-list a, .group-list label {
  padding-left: 2rem;
  background: #252525;
  box-shadow: inset 0 -1px #373737;
}

.group-list a:focus, .group-list a:hover, .group-list label:focus, .group-list label:hover { background: #131313; }

/**
 * Styling second level list items
 */

.sub-group-list a, .sub-group-list label {
  padding-left: 4rem;
  background: #353535;
  box-shadow: inset 0 -1px #474747;
}

.sub-group-list a:focus, .sub-group-list a:hover, .sub-group-list label:focus, .sub-group-list label:hover { background: #232323; }

/**
 * Styling third level list items
 */

.sub-sub-group-list a, .sub-sub-group-list label {
  padding-left: 6rem;
  background: #454545;
  box-shadow: inset 0 -1px #575757;
}

.sub-sub-group-list a:focus, .sub-sub-group-list a:hover, .sub-sub-group-list label:focus, .sub-sub-group-list label:hover { background: #333333; }

/**
 * Hide nested lists
 */

.group-list, .sub-group-list, .sub-sub-group-list {
  height: 100%;
  max-height: 0;
  overflow: hidden;
  -webkit-transition: max-height .5s ease-in-out;
  transition: max-height .5s ease-in-out;
}

.nav__list input[type=checkbox]:checked + label + ul { /* reset the height when checkbox is checked */
max-height: 1000px; }

/**
 * Rotating chevron icon
 */

label > span {
  float: right;
  -webkit-transition: -webkit-transform .65s ease;
  transition: transform .65s ease;
}

.nav__list input[type=checkbox]:checked + label > span {
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="css-script-menu">
  <div class="css-script-center">
    <ul>
      <li><a href="http://www.cssscript.com/multilevel-accordion-menu-with-plain-html-css/">Download</a></li>
      <li><a href="http://www.cssscript.com/">Back To CSS Script</a></li>
    </ul>
    <div class="css-script-ads"><script type="text/javascript"><!--
                                    google_ad_client = "ca-pub-2783044520727903";
                                    /* CSSScript Demo Page */
                                    google_ad_slot = "3025259193";
                                    google_ad_width = 728;
                                    google_ad_height = 90;
//-->
</script>
      <script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
    <div class="css-script-clear"></div>
  </div>
</div><header role="banner">
  <nav class="nav" role="navigation">
    <ul class="nav__list">
      <li>
        <input id="group-1" type="checkbox" hidden />
        <label for="group-1"><span class="fa fa-angle-right"></span> First level</label>
        <ul class="group-list">
          <li><a href="#">1st level item</a></li>
          <li>
            <input id="sub-group-1" type="checkbox" hidden />
            <label for="sub-group-1"><span class="fa fa-angle-right"></span> Second level</label>
            <ul class="sub-group-list">
              <li><a href="#">2nd level nav item</a></li>
              <li><a href="#">2nd level nav item</a></li>
              <li><a href="#">2nd level nav item</a></li>
              <li>
                <input id="sub-sub-group-1" type="checkbox" hidden />
                <label for="sub-sub-group-1"><span class="fa fa-angle-right"></span> Third level</label>
                <ul class="sub-sub-group-list">
                  <li><a href="#">3rd level nav item</a></li>
                  <li><a href="#">3rd level nav item</a></li>
                  <li><a href="#">3rd level nav item</a></li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </li>
      <li>
      <input id="group-2" type="checkbox" hidden />
      <label for="group-2"><span class="fa fa-angle-right"></span> First level</label>
      <ul class="group-list">
        <li>
        <li><a href="#">1st level item</a></li>
        <li><a href="#">1st level item</a></li>
        <input id="sub-group-2" type="checkbox" hidden />
        <label for="sub-group-2"><span class="fa fa-angle-right"></span> Second level</label>
        <ul class="sub-group-list">
          <li><a href="#">2nd level nav item</a></li>
          <li><a href="#">2nd level nav item</a></li>
          <li>
            <input id="sub-sub-group-2" type="checkbox" hidden />
            <label for="sub-sub-group-2"><span class="fa fa-angle-right"></span> Third level</label>
            <ul class="sub-sub-group-list">
              <li><a href="#">3rd level nav item</a></li>
            </ul>
          </li>
        </ul>
        </li>
      </ul>
      </li>
      <li>
      <input id="group-3" type="checkbox" hidden />
      <label for="group-3"><span class="fa fa-angle-right"></span> First level</label>
      <ul class="group-list">
        <li>
        <li><a href="#">1st level item</a></li>
        <li><a href="#">1st level item</a></li>
        <input id="sub-group-3" type="checkbox" hidden />
        <label for="sub-group-3"><span class="fa fa-angle-right"></span> Second level</label>
        <ul class="sub-group-list">
          <li><a href="#">2nd level nav item</a></li>
          <li><a href="#">2nd level nav item</a></li>
          <li><a href="#">2nd level nav item</a></li>
          <li>
            <input id="sub-sub-group-3" type="checkbox" hidden />
            <label for="sub-sub-group-3"><span class="fa fa-angle-right"></span> Third level</label>
            <ul class="sub-sub-group-list">
              <li><a href="#">3rd level nav item</a></li>
              <li><a href="#">3rd level nav item</a></li>
              <li><a href="#">3rd level nav item</a></li>
            </ul>
          </li>
        </ul>
        </li>
      </ul>
      </li>
      <li>
      <input id="group-4" type="checkbox" hidden />
      <label for="group-4"><span class="fa fa-angle-right"></span> First level</label>
      <ul class="group-list">
        <li>
        <li><a href="#">1st level item</a></li>
        <input id="sub-group-4" type="checkbox" hidden />
        <label for="sub-group-4"><span class="fa fa-angle-right"></span> Second level</label>
        <ul class="sub-group-list">
          <li><a href="#">2nd level nav item</a></li>
          <li><a href="#">2nd level nav item</a></li>
        </ul>
        </li>
      </ul>
      </li>
    </ul>
  </nav>
</header>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-46156385-1', 'cssscript.com');
    ga('send', 'pageview');

</script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

