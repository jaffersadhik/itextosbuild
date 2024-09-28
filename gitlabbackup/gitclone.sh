#!/bin/bash

# Define your GitLab server URL, username, and password
gitlab_server="https://gitlab.itextos.com"
username="jaffer.sadhik@gmail.com"
password="r3qErf%a"

# Get the list of project groups and save to a JSON file
curl -s -k --user "$username:$password" "$gitlab_server/api/v4/groups" > groups.json

cat groups.json
# Parse the JSON file to get group IDs
group_ids=$(jq -r '.[].id' groups.json)

echo "\n Group ID :" $group_ids


# Loop through group IDs and fetch projects for each group
for group_id in $group_ids; do
    group_name=$(jq -r ".[] | select(.id == $group_id) | .name" groups.json)
    echo "Fetching projects for group: $group_name"
    curl -s -k "$gitlab_server/api/v4/groups/$group_id/projects" > projects.json
    cat projects.json
    # Parse the JSON response to get project URLs
    project_urls=$(jq -r '.[].http_url_to_repo' projects.json)
    echo "Project URLS : "$project_urls
    # Loop through project URLs and clone the projects
    for project_url in $project_urls; do
        project_name=$(basename "$project_url" .git)
        echo "Cloning project: $project_name"
        git clone "$project_url"
        echo
    done

    # Remove the temporary projects.json file
    rm projects.json
done

# Remove the temporary groups.json file
rm groups.json

