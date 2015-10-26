xquery version "3.0" encoding "UTF-8";


declare variable $col_path := request:get-attribute('collection_path');
declare variable $col := collection($col_path);
declare variable $dept := request:get-parameter('code', '*');


<courses>
    {
        
        for $course in $col/courses/course[catalog_info/department/@code eq $dept]
        let $id := $course/@course_id
        let $term := $course/@term_code
        let $title := $course/catalog_info/title/text()
        let $short_title := $course/catalog_info/title/@short_title 
        let $desc := $course/catalog_info/description/text()
        order by $course/catalog_info/title
        return
            <course id = "{$id}">
             <title>{$title}</title>
             <term>{$term}</term>
             <title>{$short_title}</title>
             <description>{$desc}</description>
            </course>
            
    }
 </courses>   

