xquery version "3.0" encoding "UTF-8";

declare variable $col_path := request:get-attribute('collection_path');
declare variable $col := collection($col_path);

<departments>
    {
        for $dept in distinct-values(/courses/course/catalog_info/department/@code)
        let $deptnode := /courses/course/catalog_info/department[@code=$dept]
        order by $deptnode[1]/text()
        return
            $deptnode[1]
                
    
    }
</departments>
    



