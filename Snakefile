from os.path import join

configfile: "config/config.yaml"

# Define variables for multiple values
GRAPH_IDS = config["graph_id"]

rule all:
    input:
       # expand(join(config["graphDir"], "{graph_id}.gfa"), graph_id=GRAPH_IDS),
       expand(join(config["linksDir"], "{graph_id}_links.json"), graph_id=GRAPH_IDS)

include:
    "workflow/rules/copangraph_superbubble_detection.smk"
