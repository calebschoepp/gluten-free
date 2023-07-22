let level = params[0];
if level == "full" {
    `<span class="badge badge-success">Completely GF</span>`;
} else if level == "partial" {
    `<span class="badge badge-warning">Has GF Options</span>`;
} else {
    `<span class="badge badge-info">Unknown</span>`;
}
