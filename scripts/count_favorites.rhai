// This function counts the number of favorites that a region has.

// Param 1 should be `site.pages`
let pages = params[0];

// Param 2 should be `page`

let region_page = params[1];

let count = 0;

// Get each region page, assigning it to {path: object}.
let keys = pages.keys();
for item in keys {
    if item.index_of("/content/favorites/") == 0 {
        if pages[item].head.extra.region_code == region_page.head.extra.region_code {
            count = count + 1;
        }
    }
}

count