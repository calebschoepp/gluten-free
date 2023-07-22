let region_code = params[0];

let code_to_name = #{
    "helsinki-finland": "Helsinki, Finland",
    "stockholm-sweden": "Stockholm, Sweden",
};

if code_to_name.contains(region_code) {
    code_to_name[region_code];
} else {
    "Unknown";
}

// TODO: Wait can I acutally just do this by using the region pages themselves?