rule getGraphLinks:
    input:
        join(config["graphDir"], "{graph_id}/{graph_id}.gfa")
    output:
        join(config["linksDir"], "{graph_id}_links.json")
    shell:
        """
        python3 workflow/scripts/get_graph_links.py {input} {output}
        """
