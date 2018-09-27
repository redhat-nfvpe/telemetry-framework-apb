FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHRlbGVtZXRyeS1mcmFtZXdvcmstYXBiCmRlc2NyaXB0aW9uOiBU\
ZWxlbWV0cnkgRnJhbWV3b3JrCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKbWV0YWRh\
dGE6CiAgZGlzcGxheU5hbWU6IFRlbGVtZXRyeSBGcmFtZXdvcmsgKEFQQikKcGxhbnM6CiAgLSBu\
YW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogVGhpcyBkZWZhdWx0IHBsYW4gZGVwbG95cyB0\
ZWxlbWV0cnktZnJhbWV3b3JrLWFwYgogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAg\
ICBwYXJhbWV0ZXJzOiBbXQo="

COPY playbooks/* /opt/apb/project/
COPY . /opt/ansible/roles/telemetry-framework-apb
COPY inventory /etc/ansible/hosts
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
