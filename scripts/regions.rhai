// This function lists all of the region pages, subject to the constraints.
// It assumes you have a `content/regions` subdirectory, and every file in there
// is treated like a region page.
//
// It returns an array of objects of the form:
//  [
//    #{ uri: "path/to/page", page: PageObject }
// ]

// Param 1 should be `site.pages`
let pages = params[0];

// Loop through them and return all of the page objects that are in
// the regions path.

let region_pages = [];

// Get each region page, assigning it to {path: object}.
let keys = pages.keys();
for item in keys {
    if item.index_of("/content/regions/") == 0 {
        // Remove /content and .md
        let path = item.sub_string(8);
        path = path.sub_string(0, path.index_of(".md"));
        region_pages.push(#{
            uri: path,
            page: pages[item],
        });
    }
   
}

// TODO: Sort somehow?

region_pages