let region_code = params[0];

let code_to_name = #{
    "bergen-norway": "Bergen, Norway",
    "copenhagen-denmark": "Copenhagen, Denmark",
    "gothenburg-sweden": "Gothenburg, Sweden",
    "helsinki-finland": "Helsinki, Finland",
    "oslo-norway": "Oslo, Norway",
    "stockholm-sweden": "Stockholm, Sweden",
};

if code_to_name.contains(region_code) {
    code_to_name[region_code];
} else {
    "Unknown";
}

// TODO: Wait can I acutally just do this by using the region pages themselves?