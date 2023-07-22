// This function lists all of the favorite pages, subject to the constraints.
// It assumes you have a `content/favorites` subdirectory, and every file in there
// is treated like a favorite page.
//
// It returns an array of objects of the form:
//  [
//    #{ uri: "path/to/page", page: PageObject }
// ]

// Param 1 should be `site.pages`
let pages = params[0];

// Param 2 should be the region code
let region_code = params[1];

// Loop through them and return all of the page objects that are in
// the favorites path.

let favorite_pages = [];

// Get each favorite page, assigning it to {path: object}.
let keys = pages.keys();
for item in keys {
    if item.index_of("/content/favorites/") == 0 {
        if pages[item].head.extra.region_code == region_code {
            // Remove /content and .md
            let path = item.sub_string(8);
            path = path.sub_string(0, path.index_of(".md"));
            favorite_pages.push(#{
                uri: path,
                page: pages[item],
            });
        }
    }
   
}

// TODO: Sort somehow?

favorite_pages