  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>learn_ruby/15_in_words/in_words_spec.rb at master · alexch/learn_ruby</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144.png" />
    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="Vw8UpBePK9Cn2ccAzw+48aHRNKCDaw/LbaP3SNYlqLk=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-1b6d6805863cd0c8519e198f130584dd420b141a.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-e8f08c67657ed9496d6345e02b8b55264a2b2480.css" media="screen" rel="stylesheet" type="text/css" />
    


    <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-0812d02becf86d28285e6d23be1dffea94089a33.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/assets/github-c8a6cf02f0e758deb4de1af3a847d9cc5da492e1.js" type="text/javascript"></script>
    

        <link rel='permalink' href='/alexch/learn_ruby/blob/5c0462134b15e61ee3028942fad0287e6810cb28/15_in_words/in_words_spec.rb'>
    <meta property="og:title" content="learn_ruby"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/alexch/learn_ruby"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/5a0d7f0cb2fac7858d234de7f7f01491?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="learn_ruby - a basic ruby class generated from test-first-teaching"/>

    <meta name="description" content="learn_ruby - a basic ruby class generated from test-first-teaching" />

  <link href="https://github.com/alexch/learn_ruby/commits/master.atom" rel="alternate" title="Recent Commits to learn_ruby:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob macintosh vis-public env-production ">
    <div id="wrapper">

      

      

      


        <div class="header header-logged-in true">
          <div class="container clearfix">

            <a class="header-logo-blacktocat" href="https://github.com/">
  <span class="mega-icon mega-icon-blacktocat"></span>
</a>

            <div class="divider-vertical"></div>

            
  <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have unread notifications">
    <span class="mail-status unread"></span>
  </a>
  <div class="divider-vertical"></div>


              
  <div class="topsearch command-bar-activated">
    <form accept-charset="UTF-8" action="/search" class="command_bar_form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="mini-icon mini-icon-advanced-search "></span></a>

  <input type="text" name="q" id="command-bar" placeholder="Search or type a command" tabindex="1" data-username="fatfattymcfat" autocapitalize="off">

  <span class="mini-icon help tooltipped downwards" title="Show command bar help">
    <span class="mini-icon mini-icon-help"></span>
  </span>

  <input type="hidden" name="ref" value="commandbar">

  <div class="divider-vertical"></div>
</form>



    <ul class="top-nav">
        <li class="explore"><a href="https://github.com/explore">Explore</a></li>
        <li><a href="https://gist.github.com">Gist</a></li>
        <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  </div>


            

  
    <ul id="user-links">
      <li>
        <a href="https://github.com/fatfattymcfat" class="name">
          <img height="20" src="https://secure.gravatar.com/avatar/846162b7b75394fddfeb870a2f4ff9df?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /> fatfattymcfat
        </a>
      </li>
      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo">
          <span class="mini-icon mini-icon-create"></span>
        </a>
      </li>
      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          title="Account settings (You have no verified emails)">
          <span class="mini-icon mini-icon-account-settings"></span>
            <span class="setting_warning">!</span>
        </a>
      </li>
      <li>
          <a href="/logout" data-method="post" id="logout" class="tooltipped downwards" title="Sign out">
            <span class="mini-icon mini-icon-logout"></span>
          </a>
      </li>
    </ul>



            
          </div>
        </div>


      <div class="global-notice warn"><div class="global-notice-inner"><h2>You don't have any verified emails.  We recommend <a href="https://github.com/settings/emails">verifying</a> at least one email.</h2><p>Email verification will help our support team help you in case you have any email issues or lose your password.</p></div></div>

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu">
          <div class="container">
            <div class="title-actions-bar">
              


                  <ul class="pagehead-actions">

          <li class="subscription">
              <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="Vw8UpBePK9Cn2ccAzw+48aHRNKCDaw/LbaP3SNYlqLk=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="1053062" />
  <div class="context-menu-container js-menu-container js-context-menu">
    <span class="minibutton switcher bigger js-menu-target">
      <span class="js-context-button">
          <span class="mini-icon mini-icon-watching"></span>Watch
      </span>
    </span>

    <div class="context-pane js-menu-content">
      <a href="#" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
      <div class="context-title">Notification status</div>

      <div class="context-body pane-selector">
        <ul class="js-navigation-container">
          <li class="selector-item js-navigation-item js-navigation-target selected">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input checked="checked" id="do_included" name="do" type="radio" value="included" />
              <h4>Not watching</h4>
              <p>You will only receive notifications when you participate or are mentioned.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-watching"></span>
              Watch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_subscribed" name="do" type="radio" value="subscribed" />
              <h4>Watching</h4>
              <p>You will receive all notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-unwatch"></span>
              Unwatch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_ignore" name="do" type="radio" value="ignore" />
              <h4>Ignored</h4>
              <p>You will not receive notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-mute"></span>
              Stop ignoring
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</form>
          </li>

          <li class="js-toggler-container js-social-container starring-container ">
            <a href="/alexch/learn_ruby/unstar" class="minibutton js-toggler-target starred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Unstar
            </a><a href="/alexch/learn_ruby/star" class="minibutton js-toggler-target unstarred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Star
            </a><a class="social-count js-social-count" href="/alexch/learn_ruby/stargazers">34</a>
          </li>

              <li><a href="/alexch/learn_ruby/fork" class="minibutton js-toggler-target fork-button lighter" rel="nofollow" data-method="post"><span class="mini-icon mini-icon-fork"></span>Fork</a><a href="/alexch/learn_ruby/network" class="social-count">44</a>
              </li>


    </ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/alexch" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">alexch</span>
                  </a></span> /
                <strong><a href="/alexch/learn_ruby" class="js-current-repository">learn_ruby</a></strong>
              </h1>
            </div>

            

  <ul class="tabs">
    <li><a href="/alexch/learn_ruby" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/alexch/learn_ruby/network" highlight="repo_network">Network</a></li>
    <li><a href="/alexch/learn_ruby/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>5</span></a></li>

      <li><a href="/alexch/learn_ruby/issues" highlight="repo_issues">Issues <span class='counter'>5</span></a></li>

      <li><a href="/alexch/learn_ruby/wiki" highlight="repo_wiki">Wiki</a></li>


    <li><a href="/alexch/learn_ruby/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/alexch/learn_ruby/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter blank">0</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="context-menu-container js-menu-container js-context-menu">
      <a href="#"
         class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
         data-hotkey="w"
         data-ref="master">
         <span><em class="mini-icon mini-icon-branch"></em><i>branch:</i> master</span>
      </a>

      <div class="context-pane commitish-context js-menu-content">
        <a href="#" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
        <div class="context-title">Switch branches/tags</div>
        <div class="context-body pane-selector commitish-selector js-navigation-container">
          <div class="filterbar">
            <input type="text" id="context-commitish-filter-field" class="js-navigation-enable js-filterable-field js-ref-filter-field" placeholder="Filter branches/tags">
            <ul class="tabs">
              <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
            </ul>
          </div>

          <div class="js-filter-tab js-filter-branches">
            <div data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
                <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target selected">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/alexch/learn_ruby/blob/master/15_in_words/in_words_spec.rb" class="js-navigation-open" data-name="master" rel="nofollow">master</a>
                  </h4>
                </div>
            </div>
            <div class="no-results">Nothing to show</div>


          </div>

            <div class="js-filter-tab js-filter-tags filter-tab-empty" style="display:none">
              <div data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
              </div>
              <div class="no-results">Nothing to show</div>
            </div>

        </div>
      </div><!-- /.commitish-context-context -->
    </div>
  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/alexch/learn_ruby" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/alexch/learn_ruby/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/alexch/learn_ruby/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:0043402ec698eb8e492d87fcbf3231af -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:0043402ec698eb8e492d87fcbf3231af -->

<div id="slider">


    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>
      <div class="breadcrumb">
        <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexch/learn_ruby" class="js-slide-to" data-direction="back" itemscope="url"><span itemprop="title">learn_ruby</span></a></span></span> / <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexch/learn_ruby/tree/master/15_in_words" class="js-slide-to" data-direction="back" itemscope="url"><span itemprop="title">15_in_words</span></a></span> / <strong class="final-path">in_words_spec.rb</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="15_in_words/in_words_spec.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="mini-icon mini-icon-clipboard"></span></span>
      </div>

      <a href="/alexch/learn_ruby/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>

        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/5a0d7f0cb2fac7858d234de7f7f01491?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/alexch" rel="author">alexch</a></span>
    <time class="js-relative-date" datetime="2012-06-06T18:22:31-07:00" title="2012-06-06 18:22:31">June 06, 2012</time>
    <div class="commit-title">
        <a href="/alexch/learn_ruby/commit/5510c9956a698b79952396fd585ca7d578b32be9" class="message">generated</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/5a0d7f0cb2fac7858d234de7f7f01491?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/alexch">alexch</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/alexch/learn_ruby/blob/5c0462134b15e61ee3028942fad0287e6810cb28/15_in_words/in_words_spec.rb" data-title="learn_ruby/15_in_words/in_words_spec.rb at master · alexch/learn_ruby · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>103 lines (89 sloc)</span>
                <span>3.125 kb</span>
              </div>
              <ul class="button-group actions">
                  <li>
                        <a class="grouped-button minibutton bigger lighter tooltipped leftwards"
                           title="Clicking this button will automatically fork this project so you can edit the file"
                           href="/alexch/learn_ruby/edit/master/15_in_words/in_words_spec.rb"
                           data-method="post" rel="nofollow">Edit</a>
                  </li>
                <li><a href="/alexch/learn_ruby/raw/master/15_in_words/in_words_spec.rb" class="minibutton grouped-button bigger lighter" id="raw-url">Raw</a></li>
                  <li><a href="/alexch/learn_ruby/blame/master/15_in_words/in_words_spec.rb" class="minibutton grouped-button bigger lighter">Blame</a></li>
                <li><a href="/alexch/learn_ruby/commits/master/15_in_words/in_words_spec.rb" class="minibutton grouped-button bigger lighter" rel="nofollow">History</a></li>
              </ul>
            </div>
                <div class="data type-ruby">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1"># # Topics</span></div><div class='line' id='LC2'><span class="c1">#</span></div><div class='line' id='LC3'><span class="c1"># * strings and numbers</span></div><div class='line' id='LC4'><span class="c1"># * modules</span></div><div class='line' id='LC5'><span class="c1"># * reopening classes</span></div><div class='line' id='LC6'><span class="c1">#</span></div><div class='line' id='LC7'><span class="c1"># # Extending a built-in class</span></div><div class='line' id='LC8'><span class="c1">#</span></div><div class='line' id='LC9'><span class="c1"># To make this test pass you&#39;ll need to extend a built-in class. You&#39;ll see that we&#39;re creating a new spec for &#39;Fixnum&#39; -- this isn&#39;t a new class you&#39;ll be building, but instead it is a built-in class you will extend.</span></div><div class='line' id='LC10'><span class="c1">#</span></div><div class='line' id='LC11'><span class="c1"># Remember that in Ruby, everything is an object, even a number.  Try this in irb:</span></div><div class='line' id='LC12'><span class="c1">#</span></div><div class='line' id='LC13'><span class="c1">#     &gt;&gt; 4.class</span></div><div class='line' id='LC14'><span class="c1">#     =&gt; Fixnum</span></div><div class='line' id='LC15'><span class="c1">#     &gt;&gt; 4.methods</span></div><div class='line' id='LC16'><span class="c1">#     \[&quot;inspect&quot;, &quot;%&quot;, &quot;&lt;&lt;&quot;, ...</span></div><div class='line' id='LC17'><span class="c1">#</span></div><div class='line' id='LC18'><span class="c1"># The number 4 is of class `FixNum` and it has methods on it.  Your challenge is to add an `in_words` method to `FixNum`.</span></div><div class='line' id='LC19'><span class="c1">#</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><span class="nb">require</span> <span class="s2">&quot;in_words&quot;</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><span class="n">describe</span> <span class="no">Fixnum</span> <span class="k">do</span></div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads 0 to 9&quot;</span> <span class="k">do</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">0</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;zero&#39;</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one&#39;</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">2</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;two&#39;</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">3</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;three&#39;</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">4</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;four&#39;</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">5</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;five&#39;</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">6</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;six&#39;</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">7</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;seven&#39;</span></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">8</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;eight&#39;</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">9</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;nine&#39;</span></div><div class='line' id='LC36'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads 10 to 12&quot;</span> <span class="k">do</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">10</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;ten&#39;</span></div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">11</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;eleven&#39;</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">12</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;twelve&#39;</span></div><div class='line' id='LC42'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC43'><br/></div><div class='line' id='LC44'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads teens&quot;</span> <span class="k">do</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">13</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;thirteen&#39;</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">14</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;fourteen&#39;</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">15</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;fifteen&#39;</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">16</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;sixteen&#39;</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">17</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;seventeen&#39;</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">18</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;eighteen&#39;</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">19</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;nineteen&#39;</span></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads tens&quot;</span> <span class="k">do</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">20</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;twenty&#39;</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">30</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;thirty&#39;</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">40</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;forty&#39;</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">50</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;fifty&#39;</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">60</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;sixty&#39;</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">70</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;seventy&#39;</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">80</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;eighty&#39;</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">90</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;ninety&#39;</span></div><div class='line' id='LC63'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC64'><br/></div><div class='line' id='LC65'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads various other numbers less than 100&quot;</span> <span class="k">do</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">20</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;twenty&#39;</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">77</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;seventy seven&#39;</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">99</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;ninety nine&#39;</span></div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads hundreds&quot;</span> <span class="k">do</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">100</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one hundred&#39;</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">200</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;two hundred&#39;</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">300</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;three hundred&#39;</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">123</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one hundred twenty three&#39;</span></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">777</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;seven hundred seventy seven&#39;</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">818</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;eight hundred eighteen&#39;</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">512</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;five hundred twelve&#39;</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">999</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;nine hundred ninety nine&#39;</span></div><div class='line' id='LC80'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC81'><br/></div><div class='line' id='LC82'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads thousands&quot;</span> <span class="k">do</span></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1000</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one thousand&#39;</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">32767</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;thirty two thousand seven hundred sixty seven&#39;</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">32768</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;thirty two thousand seven hundred sixty eight&#39;</span></div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads millions&quot;</span> <span class="k">do</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">10_000_001</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;ten million one&#39;</span></div><div class='line' id='LC90'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads billions&quot;</span> <span class="k">do</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1_234_567_890</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety&#39;</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC95'><br/></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="n">it</span> <span class="s2">&quot;reads trillions&quot;</span> <span class="k">do</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1_000_000_000_000</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one trillion&#39;</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1_000_000_000_001</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one trillion one&#39;</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1_888_259_040_036</span><span class="o">.</span><span class="n">in_words</span><span class="o">.</span><span class="n">should</span> <span class="o">==</span> <span class="s1">&#39;one trillion eight hundred eighty eight billion two hundred fifty nine million forty thousand thirty six&#39;</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC101'><br/></div><div class='line' id='LC102'><span class="k">end</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>

      <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
      <div id="jump-to-line" style="display:none">
        <h2>Jump to Line</h2>
        <form accept-charset="UTF-8" class="js-jump-to-line-form">
          <input class="textfield js-jump-to-line-field" type="text">
          <div class="full-button">
            <button type="submit" class="classy">
              Go
            </button>
          </div>
        </form>
      </div>

    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543527" height="64" width="64">
</div>


        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.06737s from fe16.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-icon mega-icon-invertocat"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus command bar</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last js-hidden-pane" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
        <dd>Submit comment</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
        <dd>Preview comment</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
          <dd>Preview comment</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div class="js-hidden-pane" >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first js-hidden-pane" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first">
        <h3>Browsing Commits</h3>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>escape</dt>
          <dd>Close form</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>p</dt>
          <dd>Parent commit</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o</dt>
          <dd>Other parent commit</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <h3>Notifications</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open notification</dd>
        </dl>
      </div><!-- /.column.first -->

      <div class="column second">
        <dl class="keyboard-mappings">
          <dt>e <em>or</em> shift i <em>or</em> y</dt>
          <dd>Mark as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift m</dt>
          <dd>Mute thread</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.06867' data-host='fe16'></span>
    
  </body>
</html>

