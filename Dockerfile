FROM opensearchproject/opensearch:2.0.0

RUN chown -R :opensearch /usr/share/opensearch/data
RUN /usr/share/opensearch/bin/opensearch-plugin remove opensearch-security
ENV discovery.type single-node


EXPOSE 9200
