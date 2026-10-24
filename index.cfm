<cfquery name="qry" datasource="mydb">
	SELECT * FROM `greeting`
</cfquery>

<cfscript>
    refURL="http://docs.lucee.org/reference.html";
    githubURL="https://github.com/lucee/Lucee";
    adminURL="#CGI.CONTEXT_PATH#/lucee/admin.cfm";
    webAdminURL="#CGI.CONTEXT_PATH#/lucee/admin/web.cfm";
    serverAdminURL="#CGI.CONTEXT_PATH#/lucee/admin/server.cfm";
    mailinglistURL="https://groups.google.com/forum/##!forum/lucee";
    profURL="http://lucee.org/support.html";
    issueURL="https://bitbucket.org/lucee/lucee/issues";
    newURL="http://docs.lucee.org/guides/lucee-5.html";
    firststepsURL="http://docs.lucee.org/guides/getting-started/first-steps.html";
</cfscript>
<!DOCTYPE html>
<html>

<head>
    <title>Rapid web development with Lucee!</title>
    <link rel="icon" type="image/png" href="http://134.209.209.89:8888/favicon.png" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/lib/jstree/dist/themes/default/style.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fork-awesome/1.1.7/fonts/forkawesome-webfont.svg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fork-awesome/1.1.7/css/fork-awesome.css" />
    <script type="text/javascript" src="http://livejs.com/live.js"></script>
</head>

<body class="sub-page">
    <div class="main-wrapper">
        <section id="page-banner" class="page-banner">
            <div class="container">
                <div class="banner-content">
                    <cfoutput>
                        <button class="btn btn-sm" id="testBtn">Click</button>
                        <div id="testDiv"></div>
                    </cfoutput>
                </div>
            </div>
        </section>



        <section id="contents">

            <div class="container full-width">
                <div class="row">

                    <div class="col-md-8 main-content">

                        <cfscript>
                            writeOutput('<table class="table table-sm table-striped">');
                            firstrow = true;
                            for(row in qry) {
                                if(firstrow){
                                    firstrow = false;
                                    writeOutput('<thead class="thead-dark"><tr>');
                                    for(col in row) {
                                        writeOutput('<th>' & col & '</th>');     
                                    }
                                    writeOutput('</tr></thead>');
                                    writeOutput('<tbody>');
                                }
                                writeOutput('<tr>');
                                for(col in row) {
                                    writeOutput('<td>' & row[col] & '</td>');     
                                }
                                writeOutput('</tr>');
                            }
                            writeOutput('</tbody></table>');
                        </cfscript>
                        <div class="col-12" id="tree"></div>
                    </div>


                    <div class="col-md-4 sidebar">

                        <div class="sidebar-wrap">
                            <cfoutput>
                                <div class="widget widget-text">

                                    <h3 class="widget-title">Venerable Websites</h3>

                                    <!--- lucee.org --->
                                    <p class="file-link"><a href="http://www.lucee.org">Lucee
                                            Association Switzerland</a></p>
                                    <p>Non-profit custodians and maintainers of the
                                        Lucee Project</p>

                                    <!--- Bitbucket 
							<p class="file-link">Lucee Bitbucket</a></p>
							<p>Access the source code and builds</p> --->

                                    <!--- Mailinglist --->
                                    <p class="file-link"><a href="##">Get
                                            Involved</a></p>
                                    <p>
                                        Get involved in the Lucee Project!<br />
                                        - Engage with other Lucee community
                                        members via our <a href="#mailinglistURL#">mailing
                                            list</a><br />
                                        - <a href="#issueURL#">Submitting</a>
                                        bugs and feature requests<br />
                                        - <a href="#githubURL#">Contribute</a>
                                        to the code<br />
                                        - Become a <a href="http://lucee.org/supporters/become-a-supporter.html">Lucee
                                            Supporter</a><br />
                                    </p>




                                    <!--- Prof Services --->
                                    <p class="file-link"><a href="#profURL#">Professional
                                            Services</a></p>
                                    <p>Whether you need installation support or are
                                        looking for other professional services.
                                        Access our directory of providers <a href="#profURL#">HERE</a>.</p>

                                </div>
                            </cfoutput>
                        </div>

                    </div>


                </div>


            </div>


        </section>




        <footer id="subhead">


            <div class="footer-bot">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-sm-4">
                            <a href="/" class="footer-logo">
                                <img src="/assets/img/lucee-logo.png" alt="Lucee">
                            </a>


                        </div>


                        <div class="col-md-5 col-sm-4">
                            <p class="copyright-text">Copyright &copy; 2015 by the Lucee
                                Association Switzerland</p>
                        </div>




                    </div>


                </div>


            </div>


        </footer><!-- End of footer -->

    </div> <!-- End of .main-wrapper -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="assets/lib/smoothscroll/SmoothScroll.js"></script>
    <script>
        var cf = {};
        <cfscript>
            writeOutput(toScript(application.applicationname,'cf.app'));
            writeOutput(toScript(cgi.remote_addr,'cf.url'));
        </cfscript>
    </script>
    <script src="index.js"></script>
    <script src="assets/lib/jstree/dist/jstree.js"></script>
</body>

</html>