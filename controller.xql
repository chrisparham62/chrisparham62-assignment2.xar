xquery version "3.0" encoding "UTF-8";

(: exist variables :)

(: External variables available to the controller: :)
declare variable $exist:path external;
declare variable $exist:resource external;
declare variable $exist:controller external;
declare variable $exist:root external;
declare variable $exist:prefix external;

(: Other variables :)
declare variable $home-page-url := "departments";
declare variable $collection_path := concat($exist:root, '/', $exist:controller, '/data/courses');


(: If trailing slash is missing, put it there and do a browser-redirect :)
if ($exist:path eq "") then
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <redirect url="{request:get-uri()}"/>
    </dispatch>
    
else if($exist:resource eq "") then
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <redirect url="{$home-page-url}"/>
    </dispatch>
    
(: If there is no resource specified, browser-redirect to home page.
 : change this from "test" :)
else if($exist:resource eq "departments") then
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <forward url="{concat($exist:controller, "/data/departments_listing.xq")}">
        <set-attribute name="collection_path" value="{$collection_path}"/>
        </forward>
        <view>
        <forward servlet="XSLTServlet">
    <set-attribute name="xslt.stylesheet" value="{concat($exist:root, $exist:controller, "/xsl/departments_listing.xsl")}"/>
            </forward>
        </view>
    </dispatch>    
    
else if($exist:resource eq "courses") then
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <forward url="{concat($exist:controller, "/data/course_listing.xq")}"/>
        <set-attribute name="collection_path" value="{$collection_path}"/>
        
        <view>
        <forward servlet="XSLTServlet">
    <set-attribute name="xslt.stylesheet" value="{concat($exist:root, $exist:controller, "/xsl/course_listing.xsl")}"/> 
            </forward>
        </view>
    </dispatch>
  
(: everything is passed through :)
else
    <ignore xmlns="http://exist.sourceforge.net/NS/exist">
        <cache-control cache="yes"/>
    </ignore>
